import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/utils/app_routes.dart';
import 'package:free_books/Core/utils/service_locator.dart';
import 'package:free_books/Core/utils/simple_bloc_observer.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  setup();
  Bloc.observer = SimpleBlocObserver();
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
