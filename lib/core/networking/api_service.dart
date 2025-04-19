import 'package:dio/dio.dart';
import 'package:payment/core/networking/api_constants.dart';
import 'package:payment/core/networking/parse_error_logger.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService{

  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;
}