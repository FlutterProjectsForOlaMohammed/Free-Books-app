import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/person_image.dart';

class Review extends StatelessWidget {
  const Review({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: ListTile(
        leading: PersonImage(),
        title: Text(
          "Person Name",
          style: TextStyles.textStyle20,
        ),
        titleAlignment: ListTileTitleAlignment.top,
      ),
    );
  }
}
