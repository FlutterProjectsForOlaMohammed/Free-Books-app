import 'package:flutter/material.dart';
import 'package:free_books/Core/Functions/gradient_app_colors.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_details_view_body.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/book_image.dart';
import 'package:free_books/Core/Models/books_model/item.dart';

class BookDetailsView extends StatelessWidget {
  const BookDetailsView({super.key, required this.book});
  final Item book;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            decoration: BoxDecoration(
              gradient: griadientAppColors(),
            ),
          ),
          SafeArea(
            child: BookDetailsViewBody(book: book),
          ),
          Positioned(
            left: MediaQuery.of(context).size.width * 0.28,
            top: MediaQuery.of(context).size.height * 0.12,
            child: SizedBox(
              height: MediaQuery.of(context).size.height * 0.3,
              child: BookImage(book: book),
            ),
          ),
        ],
      ),
    );
  }
}
