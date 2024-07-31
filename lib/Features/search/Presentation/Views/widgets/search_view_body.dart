import 'package:flutter/material.dart';
import 'package:free_books/Features/search/Presentation/Views/custom_search_text_form_field.dart';

class SearchViewBody extends StatelessWidget {
  const SearchViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const CustomScrollView(
      slivers: [
        SliverToBoxAdapter(
          child: SizedBox(
            height: 16,
          ),
        ),
        SliverToBoxAdapter(
          child: CustomSearchTextFormField(),
        ),
      ],
    );
  }
}
