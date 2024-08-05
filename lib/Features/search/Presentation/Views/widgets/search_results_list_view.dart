import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/widgets/loading_indicator.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_error_widget.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/vertical_books_item.dart';
import 'package:free_books/Features/search/Presentation/View%20model/Search%20Books%20Cubit/search_books_cubit.dart';
import 'package:free_books/Features/search/Presentation/Views/widgets/no_books_found.dart';
import 'package:free_books/Features/search/Presentation/Views/widgets/search_default_body.dart';

class SearchResultsListView extends StatelessWidget {
  const SearchResultsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SearchBooksCubit, SearchBooksState>(
      builder: (context, state) {
        if (state is SearchBooksSuccessful) {
          if (state.books.isEmpty) {
            String keyword = BlocProvider.of<SearchBooksCubit>(context).keyword;
            return NoBooksFound(keyword: keyword);
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
        } else if (state is SearchBooksInitial) {
          return const SearchDefaultBody();
        } else if (state is SearchBooksFailure) {
          return SliverToBoxAdapter(
            child: SizedBox(
              height: 100,
              child: CustomErrorWidget(text: state.errMessgae),
            ),
          );
        } else {
          return const SliverFillRemaining(
            child: Loading(),
          );
        }
      },
    );
  }
}
