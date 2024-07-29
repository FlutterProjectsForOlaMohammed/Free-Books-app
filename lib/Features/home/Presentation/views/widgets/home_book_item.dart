import 'package:flutter/material.dart';
import 'package:free_books/Core/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';

class HomeBookItem extends StatelessWidget {
  const HomeBookItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * 0.35,
      child: const Column(
        children: [
          BookImage(),
          SizedBox(
            height: 8,
          ),
          Text(
            "Book Name",
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: TextStyles.textStyle24,
          )
        ],
      ),
    );
  }
}
