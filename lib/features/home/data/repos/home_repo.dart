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
      final response = await _homeApiService.getAllSpecializations(
        token: 'Bearer eyJ0eXAiOiJKV1QiLCJhbGciOiJIUzI1NiJ9.eyJpc3MiOiJodHRwczovL3ZjYXJlLmludGVncmF0aW9uMjUuY29tL2FwaS9hdXRoL2xvZ2luIiwiaWF0IjoxNzIxOTEzNjEyLCJleHAiOjE3MjIwMDAwMTIsIm5iZiI6MTcyMTkxMzYxMiwianRpIjoiYml5SkJsUmdva3BEalVXdSIsInN1YiI6IjE1NzMiLCJwcnYiOiIyM2JkNWM4OTQ5ZjYwMGFkYjM5ZTcwMWM0MDA4NzJkYjdhNTk3NmY3In0.sDme-kO7Hleki_LPXuSvPtXcQXA0CCn3jS4bJosqVbc',
      );
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ErrorHandler.handle(error));
    }
  }
}
