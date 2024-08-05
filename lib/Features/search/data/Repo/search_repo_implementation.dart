import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:free_books/Core/Models/books_model/books_model.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Core/errors/failure.dart';
import 'package:free_books/Core/services/api.dart';
import 'package:free_books/Features/search/data/Repo/search_repo.dart';

class SearchRepoImplementation implements SearchRepo {
  final Api api;

  SearchRepoImplementation(this.api);
  @override
  Future<Either<Failure, List<Item>>> fetchSearchedBooks(
      {required String keyword}) async {
    try {
      var data = await api.getRequest(
        endPoint: 'volumes?Filtering=free-ebooks&q=title:$keyword',
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
}
