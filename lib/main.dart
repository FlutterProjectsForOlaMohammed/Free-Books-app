import 'package:flutter/material.dart';
import 'package:free_books/Core/app_routes.dart';

void main() {
  runApp(const BooksApp());
}

class BooksApp extends StatelessWidget {
  const BooksApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData(brightness: Brightness.dark),
      debugShowCheckedModeBanner: false,
      routerConfig: AppRoutes.routes,
    );
  }
}
