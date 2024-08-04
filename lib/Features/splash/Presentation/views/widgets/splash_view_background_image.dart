import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:free_books/Core/utils/app_images.dart';

class SplashViewBackgroundImage extends StatelessWidget {
  const SplashViewBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        tileMode: TileMode.decal,
        sigmaX: 10,
        sigmaY: 10,
      ),
      child: SizedBox.expand(
        child: Animate(
          effects: const [
            FadeEffect(
                duration: Duration(seconds: 1),
                begin: BlurEffect.neutralBlur,
                end: BlurEffect.defaultBlur)
          ],
          child: Image.asset(
            AppImages.splashViewBackGround,
            fit: BoxFit.fill,
          ),
        ),
      ),
    );
  }
}
