import 'package:flutter/material.dart';

class Overview extends StatefulWidget {
  const Overview({
    super.key,
  });
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
          child: const Text(
              '''For a column that will store both numeric values and their corresponding descriptive keywords, a suitable and versatile name could be "ValueAndKeyword". This name is generic enough to be used for different contexts like ratings, pages, and languages, while still being descriptive of its purpose.
              For a column that will store both numeric values and their corresponding descriptive keywords, a suitable and versatile name could be "ValueAndKeyword". This name is generic enough to be used for different contexts like ratings, pages, and languages, while still being descriptive of its purpose.
              For a column that will store both numeric values and their corresponding descriptive keywords, a suitable and versatile name could be "ValueAndKeyword". This name is generic enough to be used for different contexts like ratings, pages, and languages, while still being descriptive of its purpose.
              For a column that will store both numeric values and their corresponding descriptive keywords, a suitable and versatile name could be "ValueAndKeyword". This name is generic enough to be used for different contexts like ratings, pages, and languages, while still being descriptive of its purpose.
              For a column that will store both numeric values and their corresponding descriptive keywords, a suitable and versatile name could be "ValueAndKeyword". This name is generic enough to be used for different contexts like ratings, pages, and languages, while still being descriptive of its purpose.
              For a column that will store both numeric values and their corresponding descriptive keywords, a suitable and versatile name could be "ValueAndKeyword". This name is generic enough to be used for different contexts like ratings, pages, and languages, while still being descriptive of its purpose.
              '''),
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
