import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:free_books/Core/Functions/view_animation.dart';
import 'package:free_books/Core/utils/service_locator.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Free%20Books%20Cubit/free_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Newest%20Books%20Cubit/newest_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/view%20models/Similar%20Books%20Cubit/similar_books_cubit.dart';
import 'package:free_books/Features/home/Presentation/views/book_details_view.dart';
import 'package:free_books/Features/home/Presentation/views/home_view.dart';
import 'package:free_books/Core/Models/books_model/item.dart';
import 'package:free_books/Features/home/data/Repos/home_repo_implementation.dart';
import 'package:free_books/Features/search/Presentation/View%20model/Search%20Books%20Cubit/search_books_cubit.dart';
import 'package:free_books/Features/search/Presentation/Views/search_view.dart';
import 'package:free_books/Features/search/data/Repo/search_repo_implementation.dart';
import 'package:free_books/Features/splash/Presentation/views/splash_view.dart';
import 'package:go_router/go_router.dart';

abstract class AppRoutes {
  static const homeView = '/homeView';
  static const bookDetailsView = '/bookDetailsView';
  static const searchView = '/searchView';

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
            child: MultiBlocProvider(
              providers: [
                BlocProvider(
                  create: (context) => NewestBooksCubit(
                    getIt<HomeRepoImplementation>(),
                  ),
                ),
                BlocProvider(
                  create: (context) =>
                      FreeBooksCubit(getIt<HomeRepoImplementation>()),
                ),
                BlocProvider(
                  create: (context) =>
                      SimilarBooksCubit(getIt<HomeRepoImplementation>()),
                ),
              ],
              child: const HomeView(),
            ),
          );
        },
      ),
      GoRoute(
        path: bookDetailsView,
        pageBuilder: (context, state) {
          return viewAnimation(
            state: state,
            child: BookDetailsView(
              book: state.extra as Item,
            ),
          );
        },
      ),
      GoRoute(
        path: searchView,
        pageBuilder: (context, state) {
          return viewAnimation(
            state: state,
            child: BlocProvider(
              create: (context) => SearchBooksCubit(
                getIt<SearchRepoImplementation>(),
              ),
              child: const SearchView(),
            ),
          );
        },
      ),
    ],
  );
}
