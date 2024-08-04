import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:simple_gradient_text/simple_gradient_text.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    required this.onTap,
    required this.backgroundColor,
  });
  final Color backgroundColor;
  final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 16),
        decoration: BoxDecoration(
            color: backgroundColor, borderRadius: BorderRadius.circular(16)),
        padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
        alignment: Alignment.center,
        child: GradientText(
          "Romanic",
          style: TextStyles.textStyle18,
          colors: const [
            Colors.purple,
            Colors.green,
            Colors.pink,
          ],
        ),
      ),
    );
  }
}
