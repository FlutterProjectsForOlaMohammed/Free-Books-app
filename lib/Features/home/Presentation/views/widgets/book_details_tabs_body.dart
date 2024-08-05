import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/authors_list_view.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/overview.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/download_and_preview.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class BookDetailsTabsBody extends StatelessWidget {
  const BookDetailsTabsBody(
      {super.key, required this.tabController, required this.book});
  final TabController tabController;
  final Item book;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: [
          Overview(book: book),
          AuthorsListView(book: book),
          DownloadAndPreview(book: book),
        ],
      ),
    );
  }
}
