import 'package:flutter/material.dart';

class CircularImage extends StatelessWidget {
  const CircularImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: Colors.black.withOpacity(0.06),
      radius: 28,
      child: const Icon(
        Icons.perm_identity_sharp,
        size: 32,
        color: Colors.grey,
      ),
    );
  }
}
