import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityItem extends StatelessWidget {
  const DoctorSpecialityItem({
    super.key,
    required this.specialityString,
    required this.specialityText,
  });

  final String specialityString;
  final String specialityText;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 30.r,
          backgroundColor: const Color(0xFFF4F8FF),
          child: Padding(
            padding: EdgeInsets.symmetric(
              vertical: 16.h,
              horizontal: 16.w,
            ),
            child: Image.asset(
              specialityString,
            ),
          ),
        ),
        verticalSpace(12.h),
        Text(
          specialityText,
          style: Styles.font18BlackBold.copyWith(
            fontSize: 13.sp,
            fontFamily: FontFamilyHelper.regular,
          ),
        ),
      ],
    );
  }
}
