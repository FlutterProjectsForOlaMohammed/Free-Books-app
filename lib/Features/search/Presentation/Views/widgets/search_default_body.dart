import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class SearchDefaultBody extends StatelessWidget {
  const SearchDefaultBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: GradientText(
          "Start Searching For Your Favorite Book Now 🔍",
          colors: const [
            Color.fromARGB(255, 10, 67, 114),
            Colors.grey,
            Color.fromARGB(255, 154, 7, 56),
          ],
          style: TextStyles.textStyle24,
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
