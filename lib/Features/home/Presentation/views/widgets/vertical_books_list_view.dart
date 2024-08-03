import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/vertical_books_item.dart';

class VerticalBooksListView extends StatelessWidget {
  const VerticalBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverList.separated(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const VerticalBookItem();
      },
      separatorBuilder: (BuildContext context, int index) {
        return const SizedBox(
          height: 8,
        );
      },
    );
  }
}
