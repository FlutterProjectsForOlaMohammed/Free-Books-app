import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:free_books/Core/utils/app_routes.dart';
import 'package:free_books/Core/widgets/app_logo.dart';
import 'package:free_books/Features/splash/Presentation/views/widgets/splash_view_background_image.dart';
import 'package:go_router/go_router.dart';

class SplashViewBody extends StatefulWidget {
  const SplashViewBody({super.key});

  @override
  State<SplashViewBody> createState() => _SplashViewBodyState();
}

class _SplashViewBodyState extends State<SplashViewBody> {
  @override
  void initState() {
    navigateToHomeView();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        const SplashViewBackgroundImage(),
        Animate(
          effects: const [
            ScaleEffect(
              delay: Duration(seconds: 2),
              duration: Duration(seconds: 5),
            ),
          ],
          child: const AppLogo(height: 40),
        ),
      ],
    );
  }

  void navigateToHomeView() {
    Future.delayed(const Duration(seconds: 7)).then((value) {
      GoRouter.of(context).push(AppRoutes.homeView);
    });
  }
}
