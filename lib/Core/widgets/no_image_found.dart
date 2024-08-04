import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/app_images.dart';

class NoImageFound extends StatelessWidget {
  const NoImageFound({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Image.asset(
      AppImages.splashViewBackGround,
    );
  }
}
