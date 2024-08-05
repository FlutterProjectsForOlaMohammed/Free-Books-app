import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';
import 'package:free_books/Core/Models/books_model/item.dart';

class WavedBookImage extends StatelessWidget {
  const WavedBookImage({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: OvalBottomBorderClipper(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.30,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Colors.grey,
        ),
        child: ImageFiltered(
          imageFilter: ImageFilter.blur(sigmaX: 20, sigmaY: 20),
          child: BookImage(book: book),
        ),
      ),
    );
  }
}
