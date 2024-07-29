import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/category_item.dart';

class CategoriesListView extends StatelessWidget {
  const CategoriesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 70,
      child: ListView.separated(
        separatorBuilder: (context, index) {
          return const SizedBox(
            width: 6,
          );
        },
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: 30),
        physics: const BouncingScrollPhysics(),
        itemCount: 10,
        itemBuilder: (context, index) {
          return const CategoryItem();
        },
      ),
    );
  }
}
