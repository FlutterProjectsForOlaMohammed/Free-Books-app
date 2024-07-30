import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/category_item.dart';

class CategoriesListView extends StatefulWidget {
  const CategoriesListView({super.key});

  @override
  State<CategoriesListView> createState() => _CategoriesListViewState();
}

class _CategoriesListViewState extends State<CategoriesListView> {
  int selectedIndex = 0;
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
          return CategoryItem(
            onTap: () {
              setState(() {
                selectedIndex = index;
              });
            },
            backgroundColor: (selectedIndex != index)
                ? Colors.black.withOpacity(0.08)
                : const Color.fromARGB(255, 215, 222, 181),
          );
        },
      ),
    );
  }
}
