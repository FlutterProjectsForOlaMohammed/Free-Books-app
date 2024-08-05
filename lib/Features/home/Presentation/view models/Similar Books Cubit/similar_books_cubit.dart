import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Features/home/data/Repos/home_repo_implementation.dart';

part 'similar_books_state.dart';

class SimilarBooksCubit extends Cubit<SimilarBooksState> {
  SimilarBooksCubit(this.homeRepoImplementation) : super(SimilarBooksInitial());
  final HomeRepoImplementation homeRepoImplementation;
  late String currentCategory;

  getSimilarBooks({required String category}) async {
    currentCategory = category;
    emit(
      SimilarBooksLoading(),
    );
    var response =
        await homeRepoImplementation.fetchSimilarBooks(category: category);
    response.fold(
      (failure) {
        emit(
          SimilarBooksFailure(errMessgae: failure.errMessage),
        );
      },
      (success) {
        emit(
          SimilarBooksSuccessful(books: success),
        );
      },
    );
  }
}
