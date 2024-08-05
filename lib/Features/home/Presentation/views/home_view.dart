import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/Functions/gradient_app_colors.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Newest%20Books%20Cubit/newest_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/category_list_view.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/home_view_body.dart';

class HomeView extends StatefulWidget {
  const HomeView({super.key});

  @override
  State<HomeView> createState() => _HomeViewState();
}

class _HomeViewState extends State<HomeView> {
  @override
  void initState() {
    BlocProvider.of<NewestBooksCubit>(context).getNewestBooks(
      category: categoriesNames[0],
    );
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: griadientAppColors(),
            ),
          ),
          const SafeArea(
            child: HomeViewBody(),
          )
        ],
      ),
    );
  }
}
