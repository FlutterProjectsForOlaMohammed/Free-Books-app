import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/constants.dart';
import 'package:free_books/Core/utils/text_styles.dart';
import 'package:free_books/Features/home/Presentation/views/widgets/circular_image.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    super.key,
    required this.enabled,
    required this.onPressed,
    required this.text,
  });

  final bool enabled;
  final VoidCallback onPressed;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: Column(
        children: [
          ListTile(
            onTap: onPressed,
            enabled: enabled,
            leading: const CircularImage(),
            title: Text(
              text,
              style: TextStyles.textStyle20,
            ),
            trailing: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: (enabled) ? avaliableColor : notAvaliableColor),
                  child: Text(
                    (enabled) ? "Avaliable" : "Not Avaliable",
                    style: TextStyles.textStyle12
                        .copyWith(color: Colors.grey[200]),
                  ),
                )
              ],
            ),
            titleAlignment: ListTileTitleAlignment.top,
          ),
          Divider(
            thickness: 0.40,
            indent: 40,
            endIndent: 40,
            color: (enabled) ? avaliableColor : notAvaliableColor,
          ),
        ],
      ),
    );
  }
}
