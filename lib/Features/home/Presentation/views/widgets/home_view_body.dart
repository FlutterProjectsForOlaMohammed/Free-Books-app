import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/best_seller_books_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/categories_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/newest_section.dart';

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
        ],
      ),
    );
  }
}
