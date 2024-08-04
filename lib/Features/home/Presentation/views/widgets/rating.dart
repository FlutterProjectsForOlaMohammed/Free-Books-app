import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:free_books/Core/utils/text_styles.dart';

class Rating extends StatelessWidget {
  const Rating({
    super.key,
    required this.rateingValue,
  });
  final double rateingValue;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Text("4.5",
            style:
                TextStyles.textStyle18.copyWith(fontWeight: FontWeight.w600)),
        const SizedBox(
          width: 8,
        ),
        RatingBar(
          itemSize: 28,
          initialRating: rateingValue,
          allowHalfRating: true,
          ratingWidget: RatingWidget(
            full: const Icon(
              Icons.star,
              color: Colors.orange,
            ),
            half: const Icon(
              Icons.star_half_outlined,
              color: Colors.orange,
            ),
            empty: const Icon(
              Icons.star_border,
              color: Colors.grey,
            ),
          ),
          onRatingUpdate: (value) {},
        )
      ],
    );
  }
}
