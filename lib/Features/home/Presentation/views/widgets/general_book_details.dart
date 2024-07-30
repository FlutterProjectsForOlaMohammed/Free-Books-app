import 'package:flutter/material.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/value_and_key_column.dart';

class GeneralBookDetailsInfo extends StatelessWidget {
  const GeneralBookDetailsInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1,
      margin: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      decoration: BoxDecoration(
          color: Colors.grey.withOpacity(
            0.15,
          ),
          borderRadius: BorderRadius.circular(12)),
      child: Row(
        children: [
          const ValueAndKeywordColumn(
            title: "4.5",
            subTitle: "Rating",
          ),
          Expanded(
            child: VerticalDivider(
              color: Colors.white.withOpacity(0.6),
              thickness: 4,
            ),
          ),
          const ValueAndKeywordColumn(title: "72", subTitle: "Pages"),
          Expanded(
            child: VerticalDivider(
              color: Colors.white.withOpacity(0.6),
              thickness: 4,
            ),
          ),
          const ValueAndKeywordColumn(title: "Eng", subTitle: "Language"),
        ],
      ),
    );
  }
}
