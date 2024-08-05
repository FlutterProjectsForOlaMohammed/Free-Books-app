import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:free_books/Core/widgets/loading_indicator.dart';
import 'package:free_books/Core/widgets/no_image_found.dart';
import 'package:free_books/Core/Models/books_model/item.dart';

class BookImage extends StatelessWidget {
  const BookImage({
    super.key,
    required this.book,
  });
  final Item book;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 2.8 / 4,
      child: ClipRRect(
        borderRadius: BorderRadius.circular(16),
        child: CachedNetworkImage(
          fit: BoxFit.fill,
          imageUrl: book.volumeInfo!.imageLinks?.thumbnail ?? "",
          errorWidget: (context, url, error) {
            return const NoImageFound();
          },
          placeholder: (context, url) {
            return const Loading();
          },
        ),
      ),
    );
  }
}
