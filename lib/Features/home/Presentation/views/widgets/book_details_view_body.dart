import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_details_tabs.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_details_tabs_body.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/buy_book.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/custom_close_button.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/general_book_details.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/waved_book_image.dart';
import 'package:free_books/Core/Models/books_model/item.dart';

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
        Stack(
          children: [
            WavedBookImage(book: widget.book),
            const CustomCloseButton(),
          ],
        ),
        const SizedBox(
          height: 70,
        ),
        Expanded(
          child: CustomScrollView(
            slivers: [
              SliverToBoxAdapter(
                child: Column(
                  children: [
                    Text(
                      widget.book.volumeInfo!.title!,
                      textAlign: TextAlign.center,
                      maxLines: 5,
                      style: TextStyles.textStyle30,
                    ),
                    GeneralBookDetailsInfo(book: widget.book),
                    (widget.book.saleInfo!.listPrice == null)
                        ? const SizedBox()
                        : BuyBook(book: widget.book)
                  ],
                ),
              ),
              SliverFillRemaining(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 12,
                    ),
                    BookDetailsTabs(tabController: tabController),
                    BookDetailsTabsBody(
                        tabController: tabController, book: widget.book),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
