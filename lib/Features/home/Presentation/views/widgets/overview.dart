import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/data/Models/books_model/item.dart';

class Overview extends StatefulWidget {
  const Overview({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  State<Overview> createState() => _OverviewState();
}

class _OverviewState extends State<Overview> {
  ScrollController scrollController = ScrollController();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 16),
      child: Scrollbar(
        radius: const Radius.circular(16),
        controller: scrollController,
        thumbVisibility: true,
        trackVisibility: true,
        child: SingleChildScrollView(
          controller: scrollController,
          physics: const BouncingScrollPhysics(),
          child: Text(
            widget.book.volumeInfo?.description ?? "",
            style: TextStyles.textStyle20,
          ),
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
