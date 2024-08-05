import 'package:flutter/material.dart';
import 'package:free_books/Core/utils/app_routes.dart';
import 'package:free_books/Core/utils/service_locator.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(
        textTheme: GoogleFonts.playfairDisplayTextTheme(),
      ),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.routes,
    );
  }
}
