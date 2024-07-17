import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/colors_manager.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_main_button.dart';
import 'package:appointment_app/core/widgets/terms_and_conditions_text.dart';
import 'package:appointment_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:appointment_app/features/signup/ui/widgets/already_have_an_account_text.dart';
import 'package:appointment_app/features/signup/ui/widgets/signup_bloc_listener.dart';
import 'package:appointment_app/features/signup/ui/widgets/signup_email_and_password_widget.dart';
import 'package:appointment_app/features/signup/ui/widgets/signup_view_welcome_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: Padding(
            padding: EdgeInsets.only(
              top: 50.h,
              left: 24.w,
              right: 24.w,
              bottom: 24.h,
            ),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SignupViewWelcomeTexts(),
                  verticalSpace(32),
                  Column(
                    children: [
                      const SignupEmailAndPasswordWidget(),
                      Align(
                        alignment: AlignmentDirectional.centerEnd,
                        child: GestureDetector(
                          onTap: () {},
                          child: Text(
                            'Forgot password?',
                            style: Styles.font13GreyBold.copyWith(
                              color: ColorsManager.mainBlue,
                            ),
                          ),
                        ),
                      ),
                      verticalSpace(42),
                      CustomMainButton(
                        onPressed: () {
                          validateThenSignup(context);
                        },
                        buttonText: 'Sign Up',
                      ),
                      verticalSpace(18),
                      const TermsAndConditionsText(),
                      verticalSpace(30),
                      const AlreadyHaveAccountText(),
                      const SignupBlocListener(),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  void validateThenSignup(BuildContext context) {
    if (context.read<SignupCubit>().formKey.currentState!.validate()) {
      context.read<SignupCubit>().emitSignupState(
          // SignupRequestBody(
          //   email: context.read<SignupCubit>().emailController.text,
          //   password: context.read<SignupCubit>().passwordController.text,
          // ),
          );
    }
  }
}
