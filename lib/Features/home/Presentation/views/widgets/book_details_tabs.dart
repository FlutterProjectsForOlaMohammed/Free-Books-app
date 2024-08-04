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

class CustomTabBody extends StatelessWidget {
  const CustomTabBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: const Text('''

You can modify the tab indicator in TabBar to customize the look and feel of your Flutter app.

Below are some examples of ways you can modify the indicator to improve the user experience and overall appearance of your app.
Changing the background color of tab is as easy as changing the color: Colors.greenAccent.
Changing the background color of tab is as easy as changing the color: Colors.greenAccent.
Changing the background color of tab is as easy as changing the color: Colors.greenAccent.
Changing the background color of tab is as easy as changing the color: Colors.greenAccent.
'''),
    );
  }
}
