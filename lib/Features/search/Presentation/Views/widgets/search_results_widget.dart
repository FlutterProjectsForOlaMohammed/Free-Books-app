import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';

class SearchResultsWidget extends StatelessWidget {
  const SearchResultsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 30),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Search Results",
              style: TextStyles.textStyle20,
            ),
            SizedBox(
              height: 16,
            ),
          ],
        ),
      ),
    );
  }
}
