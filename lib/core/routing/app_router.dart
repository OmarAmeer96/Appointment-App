import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/features/home/logic/home_cubit.dart';
import 'package:appointment_app/features/home/ui/home_view.dart';
import 'package:appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/features/login/ui/login_view.dart';
import 'package:appointment_app/features/onboarding/onboarding_view.dart';
import 'package:appointment_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:appointment_app/features/signup/ui/sign_up_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AppRouter {
  Route? generateRoute(RouteSettings settings) {
    // This arguments to be passed in any screen like this: (arguments as ClassName).
    // ignore: unused_local_variable
    final arguments = settings.arguments;

    switch (settings.name) {
      case Routes.onBoardingView:
        return MaterialPageRoute(
          builder: (_) => const OnboardingView(),
        );
      case Routes.loginView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<LoginCubit>(),
            child: const LoginView(),
          ),
        );
      case Routes.signUpScreen:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => getIt<SignupCubit>(),
            child: const SignUpView(),
          ),
        );
      case Routes.homeView:
        return MaterialPageRoute(
          builder: (_) => BlocProvider(
            create: (context) => HomeCubit(getIt())..getAllSpecializations(),
            child: const HomeView(),
          ),
        );
      default:
        // Modified to be null, to solve the error when the user navigates to a route that is not defined [Like navifating back].
        return null;
      // return MaterialPageRoute(
      //   builder: (_) => Scaffold(
      //     body: Center(
      //       child: Text(
      //         'No route defined for ${settings.name}',
      //         style: const TextStyle(fontWeight: FontWeight.bold),
      //       ),
      //     ),
      //   ),
      // );
    }
  }
}
