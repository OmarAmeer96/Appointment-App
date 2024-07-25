import 'package:appointment_app/core/networking/api_error_handler.dart';
import 'package:appointment_app/core/networking/api_result.dart';
import 'package:appointment_app/features/home/data/apis/home_api_service.dart';
import 'package:appointment_app/features/home/data/models/specializations_response_model/specializations_response_model.dart';
import 'package:appointment_app/features/login/data/models/login_request_body.dart';

class LoginRepo {
  final HomeApiService _homeApiService;

  LoginRepo(this._homeApiService);

  Future<ApiResult<SpecializationsResponseModel>> getAllSpecializations(
      LoginRequestBody loginRequestBody) async {
    try {
      final response =
          await _homeApiService.getAllSpecializations();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
