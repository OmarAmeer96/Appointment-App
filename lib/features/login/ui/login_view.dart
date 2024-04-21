import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/colors_manager.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_main_button.dart';
import 'package:appointment_app/core/widgets/custom_main_text_form_field.dart';
import 'package:appointment_app/features/login/ui/widgets/do_not_have_an_account_text.dart';
import 'package:appointment_app/features/login/ui/widgets/login_view_welcome_texts.dart';
import 'package:appointment_app/features/login/ui/widgets/terms_and_conditions_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  final formKey = GlobalKey<FormState>();
  bool isObscureText = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
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
                const LoginViewWelcomeTexts(),
                verticalSpace(32),
                Form(
                  key: formKey,
                  child: Column(
                    children: [
                      CustomMainTextFormFiels(
                        labelText: 'Email',
                        labelStyle: Styles.enabledTextFieldsLabelText,
                        isObscureText: false,
                        style: Styles.focusedTextFieldsLabelText,
                      ),
                      verticalSpace(18),
                      CustomMainTextFormFiels(
                        labelText: 'Password',
                        labelStyle: Styles.enabledTextFieldsLabelText,
                        isObscureText: isObscureText,
                        style: Styles.focusedTextFieldsLabelText,
                        suffixIcon: GestureDetector(
                          onTap: () {
                            setState(() {
                              isObscureText = !isObscureText;
                            });
                          },
                          child: Icon(
                            isObscureText
                                ? Icons.visibility_off
                                : Icons.visibility,
                            color: ColorsManager.focusedLabelTextColor,
                          ),
                        ),
                      ),
                      verticalSpace(18),
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
                        onPressed: () {},
                        buttonText: 'Login',
                      ),
                      verticalSpace(18),
                      const TermsAndConditionsText(),
                      verticalSpace(60),
                      const DontHaveAccountText(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
