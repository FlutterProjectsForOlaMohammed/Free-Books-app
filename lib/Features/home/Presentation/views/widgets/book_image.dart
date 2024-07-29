import 'package:flutter/material.dart';
import 'package:free_books/Core/app_images.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage(
              AppImages.splashViewBackGround,
            ),
          ),
        ),
      ),
    );
  }
}
