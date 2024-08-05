import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/app_routes.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:go_router/go_router.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class HomeBookItem extends StatelessWidget {
  const HomeBookItem({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(
          AppRoutes.bookDetailsView,
          extra: book,
        );
      },
      child: SizedBox(
        width: MediaQuery.of(context).size.width * 0.35,
        child: Column(
          children: [
            BookImage(
              book: book,
            ),
            const SizedBox(
              height: 8,
            ),
            GradientText(
              book.volumeInfo!.title!,
              maxLines: 2,
              colors: const [
                Color.fromARGB(255, 10, 67, 114),
                Colors.grey,
                Color.fromARGB(255, 154, 7, 56),
              ],
              overflow: TextOverflow.ellipsis,
              style: TextStyles.textStyle24,
            ),
          ],
        ),
      ),
    );
  }
}
