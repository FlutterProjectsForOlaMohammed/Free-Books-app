import 'package:flutter/material.dart';
import 'package:free_books/Core/app_routes.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
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
