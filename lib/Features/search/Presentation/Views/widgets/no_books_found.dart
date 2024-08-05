import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class NoBooksFound extends StatelessWidget {
  const NoBooksFound({
    super.key,
    required this.keyword,
  });

  final String keyword;

  @override
  Widget build(BuildContext context) {
    return SliverFillRemaining(
      hasScrollBody: false,
      child: Center(
        child: GradientText(
          "No Books Found by this description $keyword ...",
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
