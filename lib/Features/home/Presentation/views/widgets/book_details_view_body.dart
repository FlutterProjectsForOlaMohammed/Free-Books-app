import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_details_tabs.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_details_tabs_body.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/general_book_details.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/waved_book_image.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class BookDetailsViewBody extends StatefulWidget {
  const BookDetailsViewBody({super.key, required this.book});
  final Item book;
  @override
  State<BookDetailsViewBody> createState() => _BookDetailsViewBodyState();
}

class _BookDetailsViewBodyState extends State<BookDetailsViewBody>
    with TickerProviderStateMixin {
  @override
  Widget build(BuildContext context) {
    TabController tabController = TabController(length: 3, vsync: this);
    return Column(
      children: [
        WavedBookImage(book: widget.book),
        const SizedBox(
          height: 80,
        ),
        Text(
          widget.book.volumeInfo!.title!,
          textAlign: TextAlign.center,
          maxLines: 5,
          style: TextStyles.textStyle30,
        ),
        const GeneralBookDetailsInfo(),
        BookDetailsTabs(tabController: tabController),
        BookDetailsTabsBody(tabController: tabController),
      ],
    );
  }
}
