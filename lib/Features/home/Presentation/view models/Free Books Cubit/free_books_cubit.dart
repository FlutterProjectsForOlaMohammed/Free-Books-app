import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Features/home/data/Repos/home_repo_implementation.dart';

part 'free_books_state.dart';

class FreeBooksCubit extends Cubit<FreeBooksState> {
  FreeBooksCubit(this.homeRepoImplementation) : super(FreeBooksInitial());
  final HomeRepoImplementation homeRepoImplementation;
  late String currentCategory;
  getFreeBooks({required String category}) async {
    currentCategory = category;
    emit(
      FreeBooksLoading(),
    );
    var response =
        await homeRepoImplementation.fetchFreeBooks(category: category);
    response.fold(
      (failure) {
        emit(
          FreeBooksFailure(errMessgae: failure.errMessage),
        );
      },
      (success) {
        emit(
          FreeBooksSuccessful(books: success),
        );
      },
    );
  }
}
