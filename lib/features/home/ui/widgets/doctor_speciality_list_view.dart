import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/core/widgets/custom_section_header.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/specializations_data.dart';
import 'package:appointment_app/features/home/ui/widgets/doctor_speciality_list_view_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class DoctorSpecialityListView extends StatelessWidget {
  const DoctorSpecialityListView({
    super.key,
    required this.specializationsDataList,
  });

  final List<SpecializationsData?> specializationsDataList;

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
            itemCount: specializationsDataList.length,
            itemBuilder: (context, index) {
              return DoctorSpecialityListViewItem(
                specializationsData: specializationsDataList[index],
                itemIndex: index,
              );
            },
          ),
        ),
      ],
    );
  }
}
