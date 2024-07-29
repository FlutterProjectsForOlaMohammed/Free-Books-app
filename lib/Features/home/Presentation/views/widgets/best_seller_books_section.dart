import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/best_seller_books_list_view.dart';

class BestSellerSection extends StatelessWidget {
  const BestSellerSection({super.key});

  @override
  Widget build(BuildContext context) {
    return const SliverToBoxAdapter(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: 16,
          ),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 30),
            child: Text(
              "Best Seller Books",
              style: TextStyles.textStyle24,
            ),
          ),
          SizedBox(
            height: 16,
          ),
          BestSellerBooksListView(),
        ],
      ),
    );
  }
}
