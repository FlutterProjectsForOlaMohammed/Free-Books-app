import 'package:flutter/material.dart';
import 'package:free_books/Core/Functions/view_animation.dart';
import 'package:free_books/Features/home/Presentation/views/book_details_view.dart';
import 'package:free_books/Features/home/Presentation/views/home_view.dart';
import 'package:free_books/Features/splash/Presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static final routes = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (BuildContext context, GoRouterState state) {
          return const SplashView();
        },
      ),
      GoRoute(
        path: homeView,
        pageBuilder: (context, state) {
          return viewAnimation(
            state: state,
            child: const HomeView(),
          );
        },
      ),
      GoRoute(
        path: bookDetailsView,
        pageBuilder: (context, state) {
          return viewAnimation(
            state: state,
            child: const BookDetailsView(),
          );
        },
      ),
    ],
  );
}
