import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

CustomTransitionPage<dynamic> viewAnimation(
    {required GoRouterState state, required Widget child}) {
  return CustomTransitionPage(
    key: state.pageKey,
    child: child,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      return FadeTransition(
        opacity: CurveTween(
          curve: Curves.easeIn,
        ).animate(animation),
        child: child,
      );
    },
  );
}
