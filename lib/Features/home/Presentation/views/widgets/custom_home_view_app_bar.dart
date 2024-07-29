import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_books/Core/app_images.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/search_button.dart';

class CustomHomeViewAppBar extends StatelessWidget {
  const CustomHomeViewAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SvgPicture.asset(
              AppImages.appLogo,
              height: 23,
            ),
            const SearchButton(),
          ],
        ),
      ),
    );
  }
}
