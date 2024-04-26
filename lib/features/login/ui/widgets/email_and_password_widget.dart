import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_main_text_form_field.dart';
import 'package:appointment_app/features/login/logic/login_cubit/login_cubit.dart';
import 'package:appointment_app/features/login/ui/widgets/password_vlaidations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EmailAndPasswordWidget extends StatefulWidget {
  const EmailAndPasswordWidget({super.key});

  @override
  State<EmailAndPasswordWidget> createState() => _EmailAndPasswordWidgetState();
}

class _EmailAndPasswordWidgetState extends State<EmailAndPasswordWidget> {
  bool isObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  @override
  void initState() {
    passwordController = context.read<LoginCubit>().passwordController;
    super.initState();
    setupPasswordControllerListener();
  }

  void setupPasswordControllerListener() {
    passwordController.addListener(() {
      setState(() {
        hasLowerCase = AppRegex.hasLowerCase(passwordController.text);
        hasUpperCase = AppRegex.hasUpperCase(passwordController.text);
        hasSpecialCharacters =
            AppRegex.hasSpecialCharacter(passwordController.text);
        hasNumber = AppRegex.hasNumber(passwordController.text);
        hasMinLength = AppRegex.hasMinLength(passwordController.text);
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: context.read<LoginCubit>().formKey,
      child: Column(
        children: [
          CustomMainTextFormFiels(
            labelText: 'Email',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: false,
            style: Styles.focusedTextFieldsLabelText,
            controller: context.read<LoginCubit>().emailController,
            validator: (value) {
              if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Please enter your email';
              }
              // else if (!RegExp(
              //   r'^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$',
              // ).hasMatch(value)) {
              //   return 'Please enter a valid email';
              // } else if (value.length > 50) {
              //   return 'Email must be at most 50 characters';
              // } else if (value.contains(' ')) {
              //   return 'Email must not contain spaces';
              // } else if (value.contains('..')) {
              //   return 'Email must not contain two consecutive dots';
              // } else if (value.contains('.@')) {
              //   return 'Email must not contain .@';
              // } else if (value.contains('@.')) {
              //   return 'Email must not contain @.';
              // } else if (value.startsWith('.') || value.startsWith('@')) {
              //   return 'Email must not start with . or @';
              // } else if (value.endsWith('.') || value.endsWith('@')) {
              //   return 'Email must not end with . or @';
              // }
            },
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
                isObscureText ? Icons.visibility_off : Icons.visibility,
              ),
            ),
            controller: context.read<LoginCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
              // else if (value.length < 6) {
              //   return 'Password must be at least 6 characters';
              // } else if (value.length > 20) {
              //   return 'Password must be at most 20 characters';
              // } else if (!RegExp(
              //   r'^(?=.*?[a-z])(?=.*?[0-9]).{6,}$',
              // ).hasMatch(value)) {
              //   return 'Password must contain at least one letter and one number';
              // } else if (value.contains(' ')) {
              //   return 'Password must not contain spaces';
              // }
            },
          ),
          verticalSpace(18),
          PasswordValidations(
            hasLowerCase: hasLowerCase,
            hasUpperCase: hasUpperCase,
            hasSpecialCharacters: hasSpecialCharacters,
            hasNumber: hasNumber,
            hasMinLength: hasMinLength,
          ),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    super.dispose();
  }
}
