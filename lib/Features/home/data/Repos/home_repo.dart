import 'package:dartz/dartz.dart';
import 'package:free_books/Core/errors/failure.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

abstract class HomeRepo {
  Future<Either<Failure, List<Item>>> fetchNewestBooks({
    required String category,
  });
  Future<Either<Failure, List<Item>>> fetchFreeBooks({
    required String category,
  });
  Future<Either<Failure, List<Item>>> fetchSimilarBooks({
    required String category,
  });
}
