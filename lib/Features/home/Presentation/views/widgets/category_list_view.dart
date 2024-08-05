import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Free%20Books%20Cubit/free_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Newest%20Books%20Cubit/newest_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Similar%20Books%20Cubit/similar_books_cubit.dart';
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
        itemCount: categoriesNames.length,
        itemBuilder: (context, index) {
          return CategoryItem(
            text: categoriesNames[index],
            onTap: () {
              BlocProvider.of<NewestBooksCubit>(context).getNewestBooks(
                category: categoriesNames[index],
              );
              BlocProvider.of<FreeBooksCubit>(context).getFreeBooks(
                category: categoriesNames[index],
              );
              BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(
                category: categoriesNames[index],
              );
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

List<String> categoriesNames = [
  'general',
  'health',
  'technology',
  'science',
  'math',
  'computer',
  'sports',
  'romantic',
  'action',
  'drama'
];
