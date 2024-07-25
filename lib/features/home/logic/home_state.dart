import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/specializations_response_model.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'home_state.freezed.dart';

@freezed
class HomeState<T> with _$HomeState<T> {
  const factory HomeState.initial() = _Initial;

  // Specializations
  const factory HomeState.specializationLoading() = SpecializationLoading;
  const factory HomeState.specializationSuccess(SpecializationsResponseModel specializationsResponseModel) = SpecializationSuccess<T>;
  const factory HomeState.specializationError(ErrorHandler errorHandler) = SpecializationError;
}
