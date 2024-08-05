import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_books/Features/search/Presentation/Views/custom_search_text_form_field.dart';
import 'package:free_books/Features/search/Presentation/Views/widgets/search_results_list_view.dart';
import 'package:free_books/Features/search/Presentation/Views/widgets/search_results_widget.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      physics: BouncingScrollPhysics(),
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomSearchTextFormField(),
        ),
        SearchResultsWidget(),
        SliverPadding(
          padding: EdgeInsets.only(bottom: 24),
          sliver: SearchResultsListView(),
        ),
      ],
    );
  }
}
