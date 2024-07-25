import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/features/home/logic/home_cubit.dart';
import 'package:appointment_app/features/home/logic/home_state.dart';
import 'package:appointment_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:appointment_app/features/home/ui/widgets/doctors_blue_container.dart';
import 'package:appointment_app/features/home/ui/widgets/home_top_app_bar.dart';
import 'package:appointment_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
              BlocBuilder<HomeCubit, HomeState>(
                buildWhen: (previous, current) =>
                    current is SpecializationLoading ||
                    current is SpecializationSuccess ||
                    current is SpecializationError,
                builder: (context, state) {
                  return state.maybeWhen(
                    specializationLoading: () {
                      return const Center(
                        child: SizedBox(
                          child: CircularProgressIndicator(),
                        ),
                      );
                    },
                    specializationSuccess: (specializationsResponseModel) {
                      var specializationsList =
                          specializationsResponseModel.specializationsData;
                      return Expanded(
                        child: Column(
                          children: [
                            DoctorSpecialityListView(
                              specializationsDataList:
                                  specializationsList ?? [],
                            ),
                            verticalSpace(18.h),
                            DoctorsListView(
                              doctorsList:
                                  specializationsList?.first.doctorsList,
                            ),
                          ],
                        ),
                      );
                    },
                    specializationError: (errorHandler) {
                      return const Center(
                        child: SizedBox.shrink(),
                      );
                    },
                    orElse: () => const SizedBox.shrink(),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
