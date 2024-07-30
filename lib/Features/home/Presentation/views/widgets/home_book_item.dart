import 'package:flutter/material.dart';
import 'package:free_books/Core/app_routes.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeBookItem extends StatelessWidget {
  const HomeBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsView);
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        child: Column(
          children: [
            const BookImage(),
            const SizedBox(
              height: 8,
            ),
            GradientText(
              "Book Name",
              maxLines: 2,
              colors: const [
                Color.fromARGB(255, 10, 67, 114),
                Colors.grey,
                Color.fromARGB(255, 154, 7, 56),
              ],
              overflow: TextOverflow.ellipsis,
              style: TextStyles.textStyle24,
            )
          ],
        ),
      ),
    );
  }
}
