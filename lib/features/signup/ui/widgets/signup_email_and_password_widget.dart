import 'package:appointment_app/core/helpers/app_regex.dart';
import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/core/widgets/custom_main_text_form_field.dart';
import 'package:appointment_app/features/signup/logic/signup_cubit/signup_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class SignupEmailAndPasswordWidget extends StatefulWidget {
  const SignupEmailAndPasswordWidget({super.key});

  @override
  State<SignupEmailAndPasswordWidget> createState() =>
      _SignupEmailAndPasswordWidgetState();
}

class _SignupEmailAndPasswordWidgetState
    extends State<SignupEmailAndPasswordWidget> {
  bool isPassTextFieldObscureText = true;
  bool isConfirmPassTextFieldObscureText = true;

  bool hasLowerCase = false;
  bool hasUpperCase = false;
  bool hasSpecialCharacters = false;
  bool hasNumber = false;
  bool hasMinLength = false;

  late TextEditingController passwordController;

  final FocusNode nameFocusNode = FocusNode();
  final FocusNode emailFocusNode = FocusNode();
  final FocusNode phoneNumberFocusNode = FocusNode();
  final FocusNode passwordFocusNode = FocusNode();
  final FocusNode confirmPasswordFocusNode = FocusNode();

  @override
  void initState() {
    passwordController = context.read<SignupCubit>().passwordController;
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
      key: context.read<SignupCubit>().formKey,
      child: Column(
        children: [
          CustomMainTextFormFiels(
            labelText: 'Name',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: false,
            style: Styles.focusedTextFieldsLabelText,
            controller: context.read<SignupCubit>().nameController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your your name';
              }
            },
            prefixIcon: const Icon(Icons.email_outlined),
            focusNode: nameFocusNode,
            nextFocusNode: emailFocusNode,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Email',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: false,
            style: Styles.focusedTextFieldsLabelText,
            controller: context.read<SignupCubit>().emailController,
            validator: (value) {
              if (value!.isEmpty || !AppRegex.isEmailValid(value)) {
                return 'Please enter your email';
              }
            },
            prefixIcon: const Icon(Icons.email_outlined),
            focusNode: emailFocusNode,
            nextFocusNode: phoneNumberFocusNode,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Phone Number',
            labelStyle: Styles.enabledTextFieldsLabelText,
            style: Styles.focusedTextFieldsLabelText,
            prefixIcon: const Icon(Icons.phone),
            controller: context.read<SignupCubit>().phoneNumberController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your phone number';
              } else if (!AppRegex.isPhoneNumberValid(value)) {
                return 'Please enter a valid phone number';
              }
            },
            focusNode: phoneNumberFocusNode,
            nextFocusNode: passwordFocusNode,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: isPassTextFieldObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isPassTextFieldObscureText = !isPassTextFieldObscureText;
                });
              },
              child: Icon(
                isPassTextFieldObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            prefixIcon: const Icon(Icons.password_rounded),
            controller: context.read<SignupCubit>().passwordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
            focusNode: passwordFocusNode,
            nextFocusNode: confirmPasswordFocusNode,
          ),
          verticalSpace(18),
          CustomMainTextFormFiels(
            labelText: 'Confirm Password',
            labelStyle: Styles.enabledTextFieldsLabelText,
            isObscureText: isConfirmPassTextFieldObscureText,
            style: Styles.focusedTextFieldsLabelText,
            suffixIcon: GestureDetector(
              onTap: () {
                setState(() {
                  isConfirmPassTextFieldObscureText =
                      !isConfirmPassTextFieldObscureText;
                });
              },
              child: Icon(
                isConfirmPassTextFieldObscureText
                    ? Icons.visibility_off
                    : Icons.visibility,
              ),
            ),
            prefixIcon: const Icon(Icons.password_rounded),
            controller: context.read<SignupCubit>().confirmPasswordController,
            validator: (value) {
              if (value!.isEmpty) {
                return 'Please enter your password';
              }
            },
            focusNode: confirmPasswordFocusNode,
          ),
          verticalSpace(18),
          // To reduce the space, so I commented it out
          // PasswordValidations(
          //   hasLowerCase: hasLowerCase,
          //   hasUpperCase: hasUpperCase,
          //   hasSpecialCharacters: hasSpecialCharacters,
          //   hasNumber: hasNumber,
          //   hasMinLength: hasMinLength,
          // ),
          // verticalSpace(18),
        ],
      ),
    );
  }

  @override
  void dispose() {
    passwordController.dispose();
    nameFocusNode.dispose();
    emailFocusNode.dispose();
    phoneNumberFocusNode.dispose();
    passwordFocusNode.dispose();
    confirmPasswordFocusNode.dispose();
    super.dispose();
  }
}
