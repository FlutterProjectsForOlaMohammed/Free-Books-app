import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:free_books/Core/app_images.dart';

class SplashViewBackgroundImage extends StatelessWidget {
  const SplashViewBackgroundImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ImageFiltered(
      imageFilter: ImageFilter.blur(
        sigmaX: 10,
        sigmaY: 10,
      ),
      child: SizedBox.expand(
        child: Image.asset(
          AppImages.splashViewBackGround,
          fit: BoxFit.fill,
        ),
      ),
    );
  }
}
