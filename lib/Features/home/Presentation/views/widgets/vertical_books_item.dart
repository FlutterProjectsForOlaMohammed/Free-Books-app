import 'package:flutter/material.dart';
import 'package:free_books/Core/app_routes.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/rating.dart';
import 'package:go_router/go_router.dart';

class VerticalBookItem extends StatelessWidget {
  const VerticalBookItem({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        GoRouter.of(context).push(AppRoutes.bookDetailsView);
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.14,
            child: Row(
              children: [
                const BookImage(),
                const SizedBox(
                  width: 24,
                ),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 8,
                      ),
                      const Text(
                        "Book Name",
                        style: TextStyles.textStyle20,
                      ),
                      Text(
                        "Auther Name",
                        style: TextStyles.textStyle18.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.6),
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("Free",
                              style: TextStyles.textStyle18
                                  .copyWith(fontWeight: FontWeight.w600)),
                          const Rating(
                            rateingValue: 3.5,
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }
}