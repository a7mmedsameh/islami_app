import 'package:dio/dio.dart';
import 'api_error_model.dart';

class ApiErrorHandler {
  static ApiErrorModel handle(dynamic error) {
    if (error is DioException) {
      switch (error.type) {
        case DioExceptionType.connectionError:
          return ApiErrorModel(status: "تعذر الاتصال بالخادم، تأكد من الإنترنت وحاول مرة أخرى");
        case DioExceptionType.cancel:
          return ApiErrorModel(status: "تم إلغاء العملية");
        case DioExceptionType.connectionTimeout:
          return ApiErrorModel(status: "الخادم لم يستجب في الوقت المحدد، حاول مرة أخرى");
        case DioExceptionType.unknown:
          return ApiErrorModel(status: "لا يوجد اتصال بالإنترنت");
        case DioExceptionType.receiveTimeout:
          return ApiErrorModel(status: "الخادم تأخر في إرسال البيانات");
        case DioExceptionType.badResponse:
          return _handleError(error.response?.data);
        case DioExceptionType.sendTimeout:
          return ApiErrorModel(status: "البيانات لم تُرسل للخادم، حاول مرة أخرى");
        default:
          return ApiErrorModel(status: "حدث خطأ غير متوقع، حاول لاحقًا");
      }
    } else {
      return ApiErrorModel(status: 'حدث خطأ غير متوقع، حاول لاحقًا');
    }
  }
}

ApiErrorModel _handleError(dynamic data) {
  return ApiErrorModel(
    status: data['message'] ?? 'حدث خطأ غير متوقع، حاول لاحقًا',
    code: data['code'],
    data: data['data'],
  );
}
