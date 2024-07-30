import 'package:flutter/material.dart';
import 'package:free_books/Core/app_images.dart';

class PersonImage extends StatelessWidget {
  const PersonImage({
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
