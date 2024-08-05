import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_books/Core/errors/failure.dart';
import 'package:free_books/Core/services/api.dart';
import 'package:free_books/Features/home/data/Models/books_model/books_model.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';
import 'package:free_books/Features/home/data/Repos/home_repo.dart';

class HomeRepoImplementation implements HomeRepo {
  @override
  Future<Either<Failure, List<Item>>> fetchFreeBooks(
      {required String category}) async {
    try {
      BooksModel books = await Api(Dio()).getRequest(
        endPoint: 'volumes?Filtering=free-ebooks&q=subject:$category',
      );
      return right(books.items!);
    } on DioException catch (e) {
      return left(DioExceptionsFailures.handleErrors(e));
    } on Exception catch (e) {
      return left(
        UnExpectedException(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchNewestBooks(
      {required String category}) async {
    try {
      var data = await Api(Dio()).getRequest(
        endPoint: 'volumes?Filtering=ebooks&q=subject:$category&Sorting=newest',
      );
      BooksModel books = BooksModel.fromJson(data);
      return right(books.items!);
    } on DioException catch (e) {
      return left(DioExceptionsFailures.handleErrors(e));
    } on Exception catch (e) {
      return left(
        UnExpectedException(
          message: e.toString(),
        ),
      );
    }
  }

  @override
  Future<Either<Failure, List<Item>>> fetchSimilarBooks(
      {required String category}) async {
    try {
      BooksModel books = await Api(Dio()).getRequest(
        endPoint: 'volumes?Filtering=ebooks&q=subject:science+$category',
      );
      return right(books.items!);
    } on DioException catch (e) {
      return left(DioExceptionsFailures.handleErrors(e));
    } on Exception catch (e) {
      return left(
        UnExpectedException(
          message: e.toString(),
        ),
      );
    }
  }
}
