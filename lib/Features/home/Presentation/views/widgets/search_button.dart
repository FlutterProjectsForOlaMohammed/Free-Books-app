import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_books/Core/utils/app_images.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
    required this.backgroundColor,
    required this.radius,
    required this.onPressed,
  });
  final Color backgroundColor;
  final double radius;
  final void Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      radius: radius,
      backgroundColor: backgroundColor,
      child: IconButton(
        padding: EdgeInsets.zero,
        onPressed: onPressed,
        icon: SvgPicture.asset(AppImages.seachIcon),
      ),
    );
  }
}
