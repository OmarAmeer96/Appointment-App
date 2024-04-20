import 'package:appointment_app/core/theming/colors_manager.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Styles {
  static TextStyle font32BlueBold = TextStyle(
    fontSize: 32.sp,
    color: ColorsManager.mainBlue,
    fontFamily: 'Inter-Bold',
  );

  static TextStyle font18White600 = TextStyle(
    fontSize: 18.sp,
    color: Colors.white,
  );

  static TextStyle font13BlueBold = TextStyle(
    fontSize: 13.sp,
    color: const Color(0xFF757575),
    fontFamily: 'Inter-Regular',
  );
}
