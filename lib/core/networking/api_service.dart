import 'package:dio/dio.dart';
import 'package:islami_app/core/networking/api_constants.dart';
import 'package:islami_app/features/home/data/models/surahs_response_model.dart';
import 'package:retrofit/retrofit.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.apiBaseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String baseUrl}) = _ApiService;

  @GET(ApiConstants.surah)
  Future<SurahsResponseModel> getAllSurahs();
}
