import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Features/home/data/Repos/home_repo_implementation.dart';

part 'newest_books_state.dart';

class NewestBooksCubit extends Cubit<NewestBooksState> {
  NewestBooksCubit(this.homeRepoImplementation) : super(NewestBooksInitial());
  final HomeRepoImplementation homeRepoImplementation;
  late String currentCategory;

  getNewestBooks({required String category}) async {
    currentCategory = category;
    emit(
      NewestBooksLoading(),
    );
    var response =
        await homeRepoImplementation.fetchNewestBooks(category: category);
    response.fold((failure) {
      emit(
        NewestBooksFailure(errMessgae: failure.errMessage),
      );
    }, (success) {
      emit(
        NewestBooksSuccessful(books: success),
      );
    });
  }
}
