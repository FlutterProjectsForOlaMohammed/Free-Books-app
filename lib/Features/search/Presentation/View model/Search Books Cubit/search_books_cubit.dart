import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Features/search/data/Repo/search_repo_implementation.dart';

part 'search_books_state.dart';

class SearchBooksCubit extends Cubit<SearchBooksState> {
  SearchBooksCubit(this.searchRepoImplementation) : super(SearchBooksInitial());
  final SearchRepoImplementation searchRepoImplementation;
  getSearchedBooks({required String keyword}) async {
    emit(
      SearchBooksLoading(),
    );
    var response =
        await searchRepoImplementation.fetchSearchedBooks(keyword: keyword);
    response.fold(
      (failure) {
        emit(
          SearchBooksFailure(errMessgae: failure.errMessage),
        );
      },
      (success) {
        emit(
          SearchBooksSuccessful(books: success),
        );
      },
    );
  }
}
