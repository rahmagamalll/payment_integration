import 'package:dio/dio.dart';
import 'package:payment/core/helper/stripe_keys.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'api_constants.dart';

class DioFactory {
  /// private constructor as I don't want to allow creating an instance of this class
  DioFactory._();
  static Dio? dio;
  static Dio getDio() {
    if (dio == null) {
      dio = Dio(BaseOptions(
        headers: {
          'Content-Type': 'application/x-www-form-urlencoded',
          'Accept': 'application/json',
          'Authorization': 'Bearer ${stripeKeys.secretKey}',
        },
        baseUrl: ApiConstants.baseUrl,
        connectTimeout: const Duration(seconds: 5000),
        receiveTimeout: const Duration(seconds: 5000),
      ));
      addDioInterceptor();
      return dio!;
    } else {
      return dio!;
    }
  }

  static void addDioInterceptor() {
    dio?.interceptors.addAll([
      PrettyDioLogger(
        requestBody: true,
        requestHeader: true,
        responseHeader: true,
      ),
      LogInterceptor(responseBody: true),
    ]);
  }
}
