import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/app_images.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const CircleAvatar(
      radius: 28,
      backgroundImage: AssetImage(AppImages.splashViewBackGround),
    );
  }
}
