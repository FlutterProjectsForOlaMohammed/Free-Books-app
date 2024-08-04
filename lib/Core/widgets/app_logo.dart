import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_books/Core/utils/app_images.dart';

class AppLogo extends StatelessWidget {
  const AppLogo({
    super.key,
    required this.height,
  });
  final int height;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: SvgPicture.asset(
        AppImages.appLogo,
        height: height.toDouble(),
      ),
    );
  }
}
