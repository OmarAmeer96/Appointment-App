import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:appointment_app/features/home/ui/widgets/home_top_app_bar.dart';
import 'package:appointment_app/features/home/ui/widgets/specializations_and_doctors_list_bloc_builder.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Container(
          width: double.infinity,
          margin: EdgeInsets.symmetric(
            vertical: 12.h,
            horizontal: 16.w,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const HomeTopAppBar(),
              const DoctorsBlueContainer(),
              verticalSpace(24.h),
              const SpecializationsAndDoctorsListBlocBuilder(),
            ],
          ),
        ),
      ),
    );
  }
}
