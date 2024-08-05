import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/app_routes.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/rating.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:go_router/go_router.dart';

class VerticalBookItem extends StatelessWidget {
  const VerticalBookItem({super.key, required this.book});
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
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        child: SizedBox(
            height: MediaQuery.of(context).size.height * 0.16,
            child: Row(
              children: [
                BookImage(
                  book: book,
                ),
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
                      Text(
                        book.volumeInfo!.title!,
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.textStyle20,
                      ),
                      Text(
                        book.volumeInfo!.authors?.join(" & ") ??
                            "unknown author",
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyles.textStyle16.copyWith(
                            fontWeight: FontWeight.w600,
                            color: Colors.black.withOpacity(0.6),
                            fontStyle: FontStyle.italic),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Text(
                        checkBooksPrice(book: book),
                        style: TextStyles.textStyle20Roboto.copyWith(
                            fontWeight: FontWeight.w600, fontSize: 18),
                      ),
                      Rating(
                        rateingValue: (book.volumeInfo!.averageRating == null)
                            ? 0.0
                            : book.volumeInfo!.averageRating!.toDouble(),
                      ),
                    ],
                  ),
                ),
              ],
            )),
      ),
    );
  }

  String checkBooksPrice({required Item book}) {
    if (book.saleInfo!.listPrice == null) {
      return "Free";
    } else {
      return "${book.saleInfo!.listPrice!.amount} ${book.saleInfo!.listPrice!.currencyCode}";
    }
  }
}
