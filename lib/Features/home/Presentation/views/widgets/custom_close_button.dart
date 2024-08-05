import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class CustomCloseButton extends StatelessWidget {
  const CustomCloseButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: 22,
      top: 15,
      child: CircleAvatar(
        backgroundColor: Colors.grey.withOpacity(0.5),
        child: IconButton(
          onPressed: () {
            GoRouter.of(context).pop();
          },
          icon: const Icon(
            Icons.close,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
