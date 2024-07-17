import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/routing/routes.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AlreadyHaveAccountText extends StatelessWidget {
  const AlreadyHaveAccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
        children: [
          TextSpan(
            text: "Already have an account?",
            style: Styles.font13GreyBold.copyWith(
              color: Colors.black,
              fontSize: 13.sp,
            ),
          ),
          TextSpan(
            text: ' Sign in',
            style: Styles.font32BlueBold.copyWith(
              fontSize: 13.sp,
            ),
            recognizer: TapGestureRecognizer()
              ..onTap = () {
                context.pushReplacementNamed(Routes.loginView);
              },
          ),
        ],
      ),
    );
  }
}
