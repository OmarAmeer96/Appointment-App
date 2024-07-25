import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/theming/font_family_helper.dart';
import 'package:appointment_app/core/theming/styles.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class RecommendationDoctorsListView extends StatelessWidget {
  const RecommendationDoctorsListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Scrollbar(
        thumbVisibility: false,
        interactive: true,
        child: ListView.builder(
          physics: const BouncingScrollPhysics(),
          itemCount: 10,
          itemBuilder: (context, index) {
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
                          'Dr. Omar Ameer',
                          style: Styles.font18BlackBold.copyWith(
                            fontFamily: FontFamilyHelper.extraBold,
                          ),
                          overflow: TextOverflow.ellipsis,
                        ),
                        verticalSpace(5),
                        Text(
                          'BCS  |  01554111002',
                          style: Styles.font18BlackBold.copyWith(
                            fontSize: 13.sp,
                            fontFamily: FontFamilyHelper.semiBold,
                            color: const Color(0xFF757575),
                          ),
                        ),
                        verticalSpace(5),
                        Text(
                          'omar.ameer244@gmail.com',
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
          },
        ),
      ),
    );
  }
}
