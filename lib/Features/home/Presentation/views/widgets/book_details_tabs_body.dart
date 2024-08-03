import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/authors_list_view.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/overview.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/download_and_preview.dart';

class BookDetailsTabsBody extends StatelessWidget {
  const BookDetailsTabsBody({super.key, required this.tabController});
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: TabBarView(
        controller: tabController,
        children: const [
          Overview(),
          AuthorsListView(),
          DownloadAndPreview(),
        ],
      ),
    );
  }
}
