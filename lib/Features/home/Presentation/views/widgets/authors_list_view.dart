import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/author_details.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class AuthorsListView extends StatefulWidget {
  const AuthorsListView({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  State<AuthorsListView> createState() => _AuthorsListViewState();
}

class _AuthorsListViewState extends State<AuthorsListView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Scrollbar(
        controller: scrollController,
        thumbVisibility: true,
        radius: const Radius.circular(16),
        child: ListView.builder(
          padding: EdgeInsets.zero,
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          shrinkWrap: true,
          itemCount: widget.book.volumeInfo?.authors!.length ?? 0,
          itemBuilder: (context, index) {
            return AuthorDetails(
                author: widget.book.volumeInfo?.authors![index] ?? "");
          },
        ),
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
