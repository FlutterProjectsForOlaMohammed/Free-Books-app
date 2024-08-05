part of 'search_books_cubit.dart';

sealed class SearchBooksState extends Equatable {
  const SearchBooksState();

  @override
  List<Object> get props => [];
}

final class SearchBooksInitial extends SearchBooksState {}

final class SearchBooksSuccessful extends SearchBooksState {
  final List<Item> books;

  const SearchBooksSuccessful({
    required this.books,
  });
}

final class SearchBooksFailure extends SearchBooksState {
  final String errMessgae;

  const SearchBooksFailure({
    required this.errMessgae,
  });
}

final class SearchBooksLoading extends SearchBooksState {}
