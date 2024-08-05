part of 'free_books_cubit.dart';

sealed class FreeBooksState extends Equatable {
  const FreeBooksState();

  @override
  List<Object> get props => [];
}

final class FreeBooksInitial extends FreeBooksState {}

final class FreeBooksSuccessful extends FreeBooksState {
  final List<Item> books;

  const FreeBooksSuccessful({
    required this.books,
  });
}

final class FreeBooksFailure extends FreeBooksState {
  final String errMessgae;

  const FreeBooksFailure({
    required this.errMessgae,
  });
}

final class FreeBooksLoading extends FreeBooksState {}
