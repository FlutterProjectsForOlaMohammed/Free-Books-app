import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CustomErrorWidget extends StatelessWidget {
  const CustomErrorWidget({
    super.key,
    required this.text,
  });
  final String text;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 32),
        child: GradientText(
          text,
          colors: const [
            Color.fromARGB(255, 10, 67, 114),
            Colors.grey,
            Color.fromARGB(255, 154, 7, 56),
          ],
          textAlign: TextAlign.center,
          style: TextStyles.textStyle20,
        ),
      ),
    );
  }
}
