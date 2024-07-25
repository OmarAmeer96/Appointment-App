import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/widgets/custom_section_header.dart';
import 'package:appointment_app/features/home/ui/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(
          title: 'Doctor Speciality',
          seeAllOnTap: () {},
        ),
        verticalSpace(16.h),
        SizedBox(
          height: 100.h,
          child: ListView.builder(
            physics: const BouncingScrollPhysics(),
            scrollDirection: Axis.horizontal,
            itemCount: 8,
            itemBuilder: (context, index) {
              return Container(
                padding: EdgeInsetsDirectional.only(
                  start: index == 0 ? 0 : 24.w,
                ),
                child: const DoctorSpecialityItem(
                  specialityString: 'assets/images/speciality_1.png',
                  specialityText: "General",
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}
