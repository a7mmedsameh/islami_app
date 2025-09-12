import 'package:islami_app/core/networking/api_error_handler.dart';
import 'package:islami_app/core/networking/api_result.dart';
import 'package:islami_app/core/networking/api_service.dart';
import 'package:islami_app/features/home/data/models/surahs_response_model.dart';

class HomeRepo {
  final ApiService apiService;

  HomeRepo(this.apiService);

  Future<ApiResult<SurahsResponseModel>> getAllSurahs() async {
    try {
      final response = await apiService.getAllSurahs();
      return ApiResult.success(response);
    } catch (error) {
      return ApiResult.failure(ApiErrorHandler.handle(error));
    }
  }
}
