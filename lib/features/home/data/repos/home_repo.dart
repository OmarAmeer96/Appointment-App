import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/features/home/data/apis/home_api_service.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/specializations_response_model.dart';

class HomeRepo {
  final HomeApiService _homeApiService;

  HomeRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>>
      getAllSpecializations() async {
    try {
      final response = await _homeApiService.getAllSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
