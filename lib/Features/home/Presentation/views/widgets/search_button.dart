import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_books/Core/app_images.dart';

class SearchButton extends StatelessWidget {
  const SearchButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return IconButton(
      padding: EdgeInsets.zero,
      onPressed: () {},
      icon: SvgPicture.asset(AppImages.seachIcon),
    );
  }
}
