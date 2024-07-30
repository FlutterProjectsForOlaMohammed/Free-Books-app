import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';

class ValueAndKeywordColumn extends StatelessWidget {
  const ValueAndKeywordColumn({
    super.key,
    required this.title,
    required this.subTitle,
  });
  final String title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            title,
            style: TextStyles.textStyle20Roboto,
          ),
          const SizedBox(
            height: 8,
          ),
          Text(
            subTitle,
            style: TextStyles.textStyle18
                .copyWith(color: Colors.black.withOpacity(0.6)),
          ),
        ],
      ),
    );
  }
}
