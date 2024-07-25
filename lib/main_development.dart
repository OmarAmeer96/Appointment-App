import 'package:appointment_app/core/di/dependency_injection.dart';
import 'package:appointment_app/core/helpers/constants.dart';
import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/helpers/shared_pref_helper.dart';
import 'package:appointment_app/core/routing/app_router.dart';
import 'package:appointment_app/doc_app.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() async {
  // Make sure WidgetsBinding is initialized before Shared Prefs (runApp won't do be triggered before them).
  // This line should be the first line in them main method.
  WidgetsFlutterBinding.ensureInitialized();

  setupGetIt();

  // This is used to fix the texts being hidden bug in flutter_screenutil in release mode.
  await ScreenUtil.ensureScreenSize();

  // Check if the user is logged in or not
  await checkIfUserIsLoggedIn();

  runApp(
    DocApp(
      appRouter: AppRouter(),
    ),
  );
}

// Check if the user is logged in or not
checkIfUserIsLoggedIn() async {
  String? userToken =
      await SharedPrefHelper.getString(SharedPrefKeys.userToken);
  if (userToken.isNullOrEmpty()) {
    isUserLoggedIn = false;
  } else {
    isUserLoggedIn = true;
  }
}
