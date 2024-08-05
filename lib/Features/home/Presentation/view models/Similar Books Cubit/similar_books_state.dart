part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksSuccessful extends SimilarBooksState {
  final List<Item> books;

  const SimilarBooksSuccessful({
    required this.books,
  });
}

final class SimilarBooksFailure extends SimilarBooksState {
  final String errMessgae;

  const SimilarBooksFailure({
    required this.errMessgae,
  });
}

final class SimilarBooksLoading extends SimilarBooksState {}
