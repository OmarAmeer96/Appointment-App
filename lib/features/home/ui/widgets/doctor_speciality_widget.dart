import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/widgets/custom_section_header.dart';
import 'package:appointment_app/features/home/ui/widgets/doctor_speciality_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityWidget extends StatelessWidget {
  const DoctorSpecialityWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomSectionHeader(
          title: 'Doctor Speciality',
          seeAllOnTap: () {},
        ),
        verticalSpace(16.h),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 10.w),
          child: const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              DoctorSpecialityItem(
                specialityString: 'assets/images/speciality_1.png',
                specialityText: "General",
              ),
              DoctorSpecialityItem(
                specialityString: 'assets/images/speciality_2.png',
                specialityText: "Neurologic",
              ),
              DoctorSpecialityItem(
                specialityString: 'assets/images/speciality_3.png',
                specialityText: "Pediatric",
              ),
              DoctorSpecialityItem(
                specialityString: 'assets/images/speciality_4.png',
                specialityText: "Radiology",
              ),
            ],
          ),
        ),
      ],
    );
  }
}
