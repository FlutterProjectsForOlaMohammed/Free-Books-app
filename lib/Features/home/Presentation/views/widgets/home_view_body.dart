import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_home_view_app_bar.dart';

class HomeViewBody extends StatelessWidget {
  const HomeViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 30, vertical: 16),
      child: CustomScrollView(
        slivers: [
          CustomHomeViewAppBar(),
        ],
      ),
    );
  }
}
