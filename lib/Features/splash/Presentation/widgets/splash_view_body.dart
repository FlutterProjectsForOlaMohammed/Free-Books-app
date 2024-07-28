import 'package:flutter/material.dart';
import 'package:free_books/Core/widgets/app_logo.dart';
import 'package:free_books/Features/splash/Presentation/widgets/splash_view_background_image.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Stack(
      children: [
        SplashViewBackgroundImage(),
        AppLogo(height: 40),
      ],
    );
  }
}
