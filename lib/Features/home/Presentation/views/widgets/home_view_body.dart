import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Free%20Books%20Cubit/free_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Newest%20Books%20Cubit/newest_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Similar%20Books%20Cubit/similar_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/free_Books_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/categories_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_home_view_app_bar.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/newest_section.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/vertical_books_list_view.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 24),
      child: RefreshIndicator(
        color: const Color.fromARGB(255, 17, 60, 96),
        onRefresh: () async {
          String category =
              BlocProvider.of<NewestBooksCubit>(context).currentCategory;
          BlocProvider.of<NewestBooksCubit>(context).getNewestBooks(
            category: category,
          );
          BlocProvider.of<FreeBooksCubit>(context).getFreeBooks(
            category: category,
          );
          BlocProvider.of<SimilarBooksCubit>(context).getSimilarBooks(
            category: category,
          );
        },
        child: const CustomScrollView(
          slivers: [
            CustomHomeViewAppBar(),
            CategoriesSection(),
            NewestSection(),
            FreeBooks(),
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
                child: Text(
                  "You Can also see",
                  style: TextStyles.textStyle24,
                ),
              ),
            ),
            VerticalBooksListView(),
          ],
        ),
      ),
    );
  }
}
