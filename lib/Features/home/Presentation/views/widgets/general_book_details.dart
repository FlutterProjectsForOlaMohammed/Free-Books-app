import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/value_and_key_column.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class GeneralBookDetailsInfo extends StatelessWidget {
  const GeneralBookDetailsInfo({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 20),
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(
          0.15,
        ),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          ValueAndKeywordColumn(
            title: (book.volumeInfo?.averageRating.toString() == 'null')
                ? "0"
                : book.volumeInfo!.averageRating.toString(),
            subTitle: "Rating",
          ),
          Expanded(
            child: VerticalDivider(
              color: Colors.white.withOpacity(0.6),
              thickness: 4,
            ),
          ),
          ValueAndKeywordColumn(
              title: book.volumeInfo?.pageCount.toString() ?? " - ",
              subTitle: "Pages"),
          Expanded(
            child: VerticalDivider(
              color: Colors.white.withOpacity(0.6),
              thickness: 4,
            ),
          ),
          ValueAndKeywordColumn(
              title: book.volumeInfo?.language.toString() ?? " - ",
              subTitle: "Language"),
        ],
      ),
    );
  }
}
