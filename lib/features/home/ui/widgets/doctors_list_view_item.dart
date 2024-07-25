import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/doctor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorsListViewItem extends StatelessWidget {
  const DoctorsListViewItem({
    super.key,
    required this.doctorsList,
    required this.itemIndex,
  });

  final List<Doctor?>? doctorsList;
  final int itemIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12.r),
      ),
      margin: EdgeInsets.only(bottom: 18.h),
      child: Row(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12.r),
            child: Image.network(
              width: 110.w,
              height: 110.h,
              // doctorsList![itemIndex]!.photo ??
              'https://www.uclahealth.org/sites/default/files/styles/portrait_3x4_016000_480x640/public/images/female-doc-with-other-docs.jpg?h=dd028d5a&itok=ajLNibn5',
              fit: BoxFit.cover,
            ),
          ),
          horizontalSpace(16.w),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  doctorsList![itemIndex]!.name ?? 'Dr. Omar Ameer',
                  style: Styles.font18BlackBold.copyWith(
                    fontFamily: FontFamilyHelper.extraBold,
                  ),
                  overflow: TextOverflow.ellipsis,
                ),
                verticalSpace(5),
                Text(
                  '${doctorsList![itemIndex]!.degree ?? 'BCS'}  |  ${doctorsList![itemIndex]!.phone ?? '+20 155 411 1002'}',
                  style: Styles.font18BlackBold.copyWith(
                    fontSize: 13.sp,
                    fontFamily: FontFamilyHelper.semiBold,
                    color: const Color(0xFF757575),
                  ),
                ),
                verticalSpace(5),
                Text(
                  doctorsList![itemIndex]!.email ?? 'omar.ameer244@gmail.com',
                  style: Styles.font18BlackBold.copyWith(
                    fontSize: 13.sp,
                    fontFamily: FontFamilyHelper.medium,
                    color: const Color(0xFF757575),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
