import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';

class BookDetailsTabs extends StatelessWidget {
  const BookDetailsTabs({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32),
          child: TabBar(
            labelColor: const Color.fromARGB(255, 12, 66, 110),
            unselectedLabelColor: Colors.grey,
            indicatorColor: const Color.fromARGB(255, 12, 66, 110),
            labelPadding: const EdgeInsets.only(
              bottom: 24,
            ),
            indicatorSize: TabBarIndicatorSize.tab,
            tabs: createdBookDetailsTabs,
          ),
        ),
      ),
    );
  }

  List<Widget> get createdBookDetailsTabs {
    return [
      const Text(
        "Overview",
        style: TextStyles.textStyle20,
      ),
      const Text(
        "Author/s",
        style: TextStyles.textStyle20,
      ),
      const Text(
        "Review",
        style: TextStyles.textStyle20,
      ),
    ];
  }
}
