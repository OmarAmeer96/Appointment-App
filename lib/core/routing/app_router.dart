import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/login/ui/login_view.dart';
import 'package:appointment_app/features/onboarding/onboarding_view.dart';
import 'package:flutter/material.dart';

class AppRouter {
  Route generateRoute(RouteSettings settings) {
    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => const LoginView(),
        );
      default:
        return MaterialPageRoute(
          builder: (_) => Scaffold(
            body: Center(
              child: Text(
                'No route defined for ${settings.name}',
                style: const TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
          ),
        );
    }
  }
}
