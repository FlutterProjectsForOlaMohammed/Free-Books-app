import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:free_books/Core/utils/app_images.dart';
import 'package:free_books/Core/utils/app_routes.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/search_button.dart';
import 'package:go_router/go_router.dart';

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
            SearchButton(
              backgroundColor: Colors.black.withOpacity(0.09),
              radius: 22,
              onPressed: () {
                GoRouter.of(context).push(AppRoutes.searchView);
              },
            ),
          ],
        ),
      ),
    );
  }
}
