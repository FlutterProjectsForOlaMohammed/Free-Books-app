import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/author_details.dart';

class AuthorsListView extends StatelessWidget {
  const AuthorsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 7,
      itemBuilder: (context, index) {
        return const AuthorDetails();
      },
    );
  }
}
