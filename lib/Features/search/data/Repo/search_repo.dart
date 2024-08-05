import 'package:dartz/dartz.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Core/errors/failure.dart';

abstract class SearchRepo {
  Future<Either<Failure, List<Item>>> fetchSearchedBooks(
      {required String keyword});
}
