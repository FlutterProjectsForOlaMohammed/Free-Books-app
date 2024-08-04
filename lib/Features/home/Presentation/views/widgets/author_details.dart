import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/circular_image.dart';

class AuthorDetails extends StatelessWidget {
  const AuthorDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: ListTile(
        leading: CircularImage(),
        title: Text(
          "Author Name ",
          style: TextStyles.textStyle20,
        ),
        titleAlignment: ListTileTitleAlignment.top,
      ),
    );
  }
}
