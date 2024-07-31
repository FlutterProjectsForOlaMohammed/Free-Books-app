import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/author_details.dart';

class AuthorsListView extends StatefulWidget {
  const AuthorsListView({
    super.key,
  });

  @override
  State<AuthorsListView> createState() => _AuthorsListViewState();
}

class _AuthorsListViewState extends State<AuthorsListView> {
  ScrollController scrollController = ScrollController();

  @override
  Widget build(BuildContext context) {
    return Scrollbar(
      controller: scrollController,
      thumbVisibility: true,
      trackVisibility: true,
      radius: const Radius.circular(16),
      child: ListView.builder(
        padding: EdgeInsets.zero,
        controller: scrollController,
        physics: const BouncingScrollPhysics(),
        itemCount: 7,
        itemBuilder: (context, index) {
          return const AuthorDetails();
        },
      ),
    );
  }

  @override
  void dispose() {
    scrollController.dispose();
    super.dispose();
  }
}
