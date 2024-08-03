import 'package:dio/dio.dart';

class Api {
  final Dio dio;
  final String baseUrl = 'https://www.googleapis.com/books/v1';
  Api(
    this.dio,
  );
  Future getRequest({required String endPoint}) async {
    var response = await dio.get("$baseUrl/$endPoint");
    return response.data;
  }
}
