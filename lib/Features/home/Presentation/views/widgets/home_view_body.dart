import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/best_seller_books_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/categories_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/newest_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/similar_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(vertical: 24),
      child: CustomScrollView(
        physics: BouncingScrollPhysics(),
        slivers: [
          CustomHomeViewAppBar(),
          CategoriesSection(),
          NewestSection(),
          BestSellerSection(),
          SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
              child: Text(
                "You Can also see",
                style: TextStyles.textStyle24,
              ),
            ),
          ),
          SimilarBooksListView(),
        ],
      ),
    );
  }
}
