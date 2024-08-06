import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Core/widgets/loading_indicator.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Similar%20Books%20Cubit/similar_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_error_widget.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/vertical_books_item.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class VerticalBooksListView extends StatelessWidget {
  const VerticalBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SimilarBooksCubit, SimilarBooksState>(
      builder: (context, state) {
        if (state is SimilarBooksSuccessful) {
          if (state.books.isEmpty) {
            return SliverFillRemaining(
              hasScrollBody: false,
              child: SizedBox(
                height: 100,
                child: Center(
                  child: GradientText(
                    "No Books Found ...",
                    colors: const [
                      Color.fromARGB(255, 10, 67, 114),
                      Colors.grey,
                      Color.fromARGB(255, 154, 7, 56),
                    ],
                    style: TextStyles.textStyle24,
                    textAlign: TextAlign.center,
                  ),
                ),
              ),
            );
          }
          return SliverList.separated(
            itemCount: state.books.length,
            itemBuilder: (context, index) {
              return VerticalBookItem(book: state.books[index]);
            },
            separatorBuilder: (BuildContext context, int index) {
              return const SizedBox(
                height: 8,
              );
            },
          );
        } else if (state is SimilarBooksFailure) {
          return SliverToBoxAdapter(
            child: SizedBox(
                height: 100, child: CustomErrorWidget(text: state.errMessgae)),
          );
        } else {
          return const SliverToBoxAdapter(child: Loading());
        }
      },
    );
  }
}
