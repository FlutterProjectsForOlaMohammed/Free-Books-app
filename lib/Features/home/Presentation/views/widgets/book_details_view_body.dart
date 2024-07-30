import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_details_tabs.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/general_book_details.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/waved_book_image.dart';

class BookDetailsViewBody extends StatelessWidget {
  const BookDetailsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(
      children: [
        WavedBookImage(),
        Text(
          "Book Name",
          textAlign: TextAlign.center,
          maxLines: 5,
          style: TextStyles.textStyle30,
        ),
        GeneralBookDetailsInfo(),
        BookDetailsTabs(),
      ],
    );
  }
}
