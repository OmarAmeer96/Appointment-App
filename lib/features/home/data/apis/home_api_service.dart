import 'package:appointment_app/core/networking/api_constants.dart';
import 'package:appointment_app/features/home/data/apis/home_api_constants.dart';
import 'package:dio/dio.dart';
import 'package:retrofit/http.dart';
part 'home_api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio) = _HomeApiService;

  @GET(HomeApiConstants.getAllSpecializations)
  Future<SpecializationsResponseModel> getAllSpecializations();
}
