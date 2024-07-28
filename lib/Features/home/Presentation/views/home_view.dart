import 'package:flutter/material.dart';
import 'package:free_books/Core/Functions/gradient_app_colors.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/home_view_body.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

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
