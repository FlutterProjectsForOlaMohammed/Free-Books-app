import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/category_list_view.dart';

class CategoriesSection extends StatelessWidget {
  const CategoriesSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 24,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Categories",
              style: TextStyles.textStyle24,
            ),
          ),
          CategoriesListView(),
        ],
      ),
    );
  }
}
