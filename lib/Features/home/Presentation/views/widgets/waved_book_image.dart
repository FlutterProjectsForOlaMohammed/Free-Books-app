import 'package:flutter/material.dart';
import 'package:flutter_custom_clippers/flutter_custom_clippers.dart';
import 'package:free_books/Core/app_images.dart';

class WavedBookImage extends StatelessWidget {
  const WavedBookImage({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: WaveClipperTwo(),
      child: Container(
        height: MediaQuery.of(context).size.height * 0.36,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(
          color: Color.fromARGB(255, 190, 147, 53),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(AppImages.splashViewBackGround),
          ),
        ),
      ),
    );
  }
}
