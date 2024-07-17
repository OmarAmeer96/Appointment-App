import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theming/colors_manager.dart';
import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:appointment_app/features/signup/logic/signup_cubit/signup_state.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupBlocListener extends StatelessWidget {
  const SignupBlocListener({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocListener<SignupCubit, SignupState>(
      listenWhen: (previous, current) =>
          current is Loading || current is Success || current is Error,
      listener: (context, state) {
        state.whenOrNull(
          loading: () {
            showDialog(
              context: context,
              builder: (context) => const Center(
                child: CircularProgressIndicator(
                  color: ColorsManager.mainBlue,
                ),
              ),
            );
          },
          success: (signupResponse) {
            context.pop();
            context.pushNamed(Routes.homeView);
          },
          error: (error) {
            context.pop();
            setupErrorState(context, error);
          },
        );
      },
      child: const SizedBox.shrink(),
    );
  }

  Future<dynamic> setupErrorState(BuildContext context, String error) {
    return showDialog(
      context: context,
      builder: (context) => AlertDialog(
        icon: const Icon(
          Icons.error,
          color: Colors.red,
          size: 32,
        ),
        content: Text(
          error,
          textAlign: TextAlign.center,
          style: Styles.font13GreyBold.copyWith(
            color: ColorsManager.mainBlue,
            fontSize: 15,
            fontFamily: FontFamilyHelper.medium,
          ),
        ),
        actions: [
          TextButton(
            onPressed: () {
              context.pop();
            },
            child: Text(
              'Got it',
              style: Styles.font13GreyBold.copyWith(
                color: ColorsManager.mainBlue,
                fontSize: 15,
                fontFamily: FontFamilyHelper.bold,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
