import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/review.dart';

class ReviewsListView extends StatelessWidget {
  const ReviewsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics: const NeverScrollableScrollPhysics(),
      itemCount: 5,
      itemBuilder: (context, index) {
        return const Review();
      },
    );
  }
}
