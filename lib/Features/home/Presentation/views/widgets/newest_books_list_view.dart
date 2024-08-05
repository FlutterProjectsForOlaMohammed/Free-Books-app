import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/widgets/loading_indicator.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Newest%20Books%20Cubit/newest_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_error_widget.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/home_book_item.dart';

class NewestBooksListView extends StatelessWidget {
  const NewestBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<NewestBooksCubit, NewestBooksState>(
      builder: (context, state) {
        if (state is NewestBooksSuccessful) {
          return SizedBox(
            height: MediaQuery.of(context).size.height * 0.34,
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              physics: const BouncingScrollPhysics(),
              scrollDirection: Axis.horizontal,
              itemBuilder: (context, index) {
                return HomeBookItem(book: state.books[index]);
              },
              separatorBuilder: (context, index) {
                return const SizedBox(
                  width: 12,
                );
              },
              itemCount: state.books.length,
            ),
          );
        } else if (state is NewestBooksFailure) {
          return SizedBox(
              height: 100, child: CustomErrorWidget(text: state.errMessgae));
        } else {
          return const Loading();
        }
      },
    );
  }
}
