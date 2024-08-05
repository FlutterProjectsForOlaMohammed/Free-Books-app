import 'package:flutter/material.dart';
import 'package:free_books/Core/Functions/custom_launch_url.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class BuyButton extends StatelessWidget {
  const BuyButton({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () async {
        await customLaunchUrl(url: book.saleInfo?.buyLink ?? "");
      },
      child: Container(
        decoration: BoxDecoration(
            color: Colors.green, borderRadius: BorderRadius.circular(12)),
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
        child: Text(
          "Buy",
          style: TextStyles.textStyle20
              .copyWith(color: Colors.white.withOpacity(0.8)),
        ),
      ),
    );
  }
}
