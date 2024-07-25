import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/specializations_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class DoctorSpecialityListViewItem extends StatelessWidget {
  const DoctorSpecialityListViewItem({
    super.key,
    this.specializationsData,
    required this.itemIndex,
  });

  final SpecializationsData? specializationsData;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsetsDirectional.only(
        start: itemIndex == 0 ? 0 : 24.w,
      ),
      child: Column(
        children: [
          CircleAvatar(
            radius: 30.r,
            backgroundColor: const Color(0xFFF4F8FF),
            child: Padding(
              padding: EdgeInsets.symmetric(
                vertical: 13.h,
                horizontal: 13.w,
              ),
              child: SvgPicture.asset("assets/svgs/doctor_small_icon.svg"),
            ),
          ),
          verticalSpace(10.h),
          Text(
            specializationsData!.name ?? 'Omar Ameer',
            style: Styles.font18BlackBold.copyWith(
              fontSize: 13.sp,
              fontFamily: FontFamilyHelper.regular,
            ),
          ),
        ],
      ),
    );
  }
}
