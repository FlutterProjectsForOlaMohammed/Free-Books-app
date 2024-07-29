import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/home_book_item.dart';

class BestSellerBooksListView extends StatelessWidget {
  const BestSellerBooksListView({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.3,
      child: ListView.separated(
          padding: const EdgeInsets.symmetric(horizontal: 30),
          physics: const BouncingScrollPhysics(),
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return const HomeBookItem();
          },
          separatorBuilder: (context, index) {
            return const SizedBox(
              width: 12,
            );
          },
          itemCount: 10),
    );
  }
}
