import 'package:appointment_app/features/home/data/repos/home_repo.dart';
import 'package:appointment_app/features/home/logic/home_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class HomeCubit extends Cubit<HomeState> {
  final HomeRepo _homeRepo;
  HomeCubit(this._homeRepo) : super(const HomeState.initial());

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
}
