part of 'newest_books_cubit.dart';

sealed class NewestBooksState extends Equatable {
  const NewestBooksState();

  @override
  List<Object> get props => [];
}

final class NewestBooksInitial extends NewestBooksState {}

final class NewestBooksSuccessful extends NewestBooksState {
  final List<Item> books;

  const NewestBooksSuccessful({
    required this.books,
  });
}

final class NewestBooksFailure extends NewestBooksState {
  final String errMessgae;

  const NewestBooksFailure({
    required this.errMessgae,
  });
}

final class NewestBooksLoading extends NewestBooksState {}
