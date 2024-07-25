import 'package:appointment_app/core/helpers/spacing.dart';
import 'package:appointment_app/features/home/logic/home_cubit.dart';
import 'package:appointment_app/features/home/logic/home_state.dart';
import 'package:appointment_app/features/home/ui/widgets/doctor_speciality_list_view.dart';
import 'package:appointment_app/features/home/ui/widgets/doctors_list_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SpecializationsAndDoctorsListBlocBuilder extends StatelessWidget {
  const SpecializationsAndDoctorsListBlocBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<HomeCubit, HomeState>(
      buildWhen: (previous, current) =>
          current is SpecializationLoading ||
          current is SpecializationSuccess ||
          current is SpecializationError,
      builder: (context, state) {
        return state.maybeWhen(
          specializationLoading: () {
            return setUpLoading();
          },
          specializationSuccess: (specializationsResponseModel) {
            return setUpSuccess(specializationsResponseModel);
          },
          specializationError: (errorHandler) => setUpError(),
          orElse: () => const SizedBox.shrink(),
        );
      },
    );
  }

  Widget setUpLoading() {
    return const Center(
      child: SizedBox(
        child: CircularProgressIndicator(),
      ),
    );
  }

  Widget setUpSuccess(specializationsResponseModel) {
    var specializationsList = specializationsResponseModel.specializationsData;
    return Expanded(
      child: Column(
        children: [
          DoctorSpecialityListView(
            specializationsDataList: specializationsList ?? [],
          ),
          verticalSpace(18.h),
          DoctorsListView(
            doctorsList: specializationsList?.first.doctorsList,
          ),
        ],
      ),
    );
  }

  Widget setUpError() {
    return const Center(
      child: SizedBox.shrink(),
    );
  }
}
