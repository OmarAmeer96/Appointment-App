import 'package:appointment_app/core/helpers/extensions.dart';
import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/doctor.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/specializations_data.dart';
import 'package:appointment_app/features/home/data/repos/home_repo.dart';
import 'package:appointment_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

  List<SpecializationsData>? specializationsList = [];

  void getAllSpecializations() async {
    emit(const HomeState.specializationLoading());
    final response = await _homeRepo.getAllSpecializations();
    response.when(
      success: (specializationsResponseModel) {
        emit(HomeState.specializationSuccess(specializationsResponseModel));
      },
      failure: (errorHandler) {
        emit(HomeState.specializationError(errorHandler));
      },
    );
  }

  void getDoctorsList({required int specializationId}) {
    List<Doctor?>? doctorsList =
        getDoctorsListBySecializationId(specializationId);

    if (!doctorsList.isNullOrEmpty()) {
      emit(HomeState.doctorSuccess(doctorsList!));
    } else {
      emit(
        HomeState.specializationError(
          ErrorHandler.handle(
            "Doctors list not found for the selected specialization!",
          ),
        ),
      );
    }
  }

  /// Returns the list of doctors by specialization id.
  List<Doctor?>? getDoctorsListBySecializationId(int specializationId) {
    return specializationsList
        ?.firstWhere((specialization) => specialization.id == specializationId)
        .doctorsList;
  }
}
