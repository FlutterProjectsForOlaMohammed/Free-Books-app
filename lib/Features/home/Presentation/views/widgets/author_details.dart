import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/circular_image.dart';

class AuthorDetails extends StatelessWidget {
  const AuthorDetails({
    super.key,
    required this.author,
  });
  final String author;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: ListTile(
        leading: const CircularImage(),
        title: Text(
          author,
          style: TextStyles.textStyle20,
        ),
        titleAlignment: ListTileTitleAlignment.top,
      ),
    );
  }
}
