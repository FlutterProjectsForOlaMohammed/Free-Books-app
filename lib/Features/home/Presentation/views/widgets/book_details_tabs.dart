import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';

class BookDetailsTabs extends StatelessWidget {
  const BookDetailsTabs({
    super.key,
    required this.tabController,
  });
  final TabController tabController;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: TabBar(
          controller: tabController,
          labelColor: const Color.fromARGB(255, 12, 66, 110),
          unselectedLabelColor: Colors.grey,
          indicatorColor: const Color.fromARGB(255, 12, 66, 110),
          labelPadding: const EdgeInsets.only(
            bottom: 16,
          ),
          indicatorSize: TabBarIndicatorSize.tab,
          tabs: createdBookDetailsTabs,
        ),
      ),
    );
  }

  List<Widget> get createdBookDetailsTabs {
    return [
      const Tab(
        child: Text(
          "Overview",
          style: TextStyles.textStyle20,
        ),
      ),
      const Tab(
        child: Text(
          "Author/s",
          style: TextStyles.textStyle20,
        ),
      ),
      const Tab(
        child: Text(
          "Download",
          style: TextStyles.textStyle20,
        ),
      ),
    ];
  }
}
