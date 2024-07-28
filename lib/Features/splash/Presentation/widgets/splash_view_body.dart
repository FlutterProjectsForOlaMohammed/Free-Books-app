import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:free_books/Core/widgets/app_logo.dart';
import 'package:free_books/Features/splash/Presentation/widgets/splash_view_background_image.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SplashViewBackgroundImage(),
        Animate(
          effects: const [
            ScaleEffect(
              duration: Duration(seconds: 5),
            ),
          ],
          child: const AppLogo(height: 40),
        ),
      ],
    );
  }
}
