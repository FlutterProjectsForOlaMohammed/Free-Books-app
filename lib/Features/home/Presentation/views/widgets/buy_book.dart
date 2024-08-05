import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/buy_button.dart';
import 'package:free_books/Core/Models/books_model/item.dart';

class BuyBook extends StatelessWidget {
  const BuyBook({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
        height: MediaQuery.of(context).size.height * 0.04,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: Row(
            children: [
              Text(
                "Price : ${(book.saleInfo!.listPrice!.amount)} ${book.saleInfo!.listPrice!.currencyCode} ",
                style: TextStyles.textStyle20Roboto,
              ),
              const Spacer(),
              BuyButton(
                book: book,
              ),
            ],
          ),
        ));
  }
}
