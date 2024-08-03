import 'package:dio/dio.dart';

abstract class Failure {}

class DioExceptionsFailures extends Failure {
  late String errMessage;

  DioExceptionsFailures({
    required this.errMessage,
  });
  factory DioExceptionsFailures.handleErrors(DioException dioError) {
    switch (dioError.type) {
      case DioExceptionType.connectionTimeout:
        return DioExceptionsFailures(
          errMessage: 'Connection timed out.',
        );
      case DioExceptionType.sendTimeout:
        return DioExceptionsFailures(
          errMessage: 'Request timed out while sending.',
        );
      case DioExceptionType.receiveTimeout:
        return DioExceptionsFailures(
          errMessage:
              'Response timed out. The server might be slow or unavailable.',
        );
      case DioExceptionType.badCertificate:
        return DioExceptionsFailures(
          errMessage:
              'Invalid SSL certificate. Please ensure you have a secure connection.',
        );
      case DioExceptionType.badResponse:
        return DioExceptionsFailures.badResponse(
            statusCode: dioError.response!.statusCode!);

      case DioExceptionType.cancel:
        return DioExceptionsFailures(
          errMessage: 'Request was cancelled.',
        );
      case DioExceptionType.connectionError:
        return DioExceptionsFailures(
          errMessage:
              'Connection error. Please check your internet connection.',
        );
      default:
        if (dioError.message?.contains("SocketException") ?? false) {
          return DioExceptionsFailures(
            errMessage: "No Internet Connection , Check Your Connection . ",
          );
        } else {
          return DioExceptionsFailures(
            errMessage: "An error occurred. Please try again later.",
          );
        }
    }
  }
  factory DioExceptionsFailures.badResponse({
    required int statusCode,
  }) {
    if (statusCode == 400) {
      return DioExceptionsFailures(
          errMessage: 'Bad request. Please check your input and try again.');
    } else if (statusCode == 401) {
      return DioExceptionsFailures(
          errMessage: 'Unauthorized. Please check your credentials.');
    } else if (statusCode == 403) {
      return DioExceptionsFailures(
          errMessage: 'Forbidden. You do not have permission to access this.');
    } else if (statusCode == 404) {
      return DioExceptionsFailures(
          errMessage: 'Not found. The requested resource could not be found.');
    } else if (statusCode == 500) {
      return DioExceptionsFailures(
          errMessage: 'Server error. Please try again later.');
    } else {
      return DioExceptionsFailures(
          errMessage: "An error occurred. Please try again later.");
    }
  }
}

class UnExpectedException extends Failure {
  final String errMessage;

  UnExpectedException({
    required this.errMessage,
  });
}
