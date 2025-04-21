import 'package:dio/dio.dart';
import 'package:payment/core/networking/api_constants.dart';
import 'package:payment/core/networking/parse_error_logger.dart';
import 'package:payment/features/payment/data/models/epheneral_key_responce/epheneral_key_responce.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';
import 'package:payment/features/payment/data/models/payment_intent_responce/payment_intent_responce.dart';
import 'package:retrofit/http.dart';
part 'api_service.g.dart';

@RestApi(baseUrl: ApiConstants.baseUrl)
abstract class ApiService {
  factory ApiService(Dio dio, {String? baseUrl}) = _ApiService;

  @POST(ApiConstants.paymentIntent)
  Future<PaymentIntentResponce> createPaymentIntent(
      @Body() PaymentIntentRequest paymentIntentRequest);

  @POST(ApiConstants.createEphemeralKey)
  Future<EpheneralKeyResponce> createEphemeralKey(
      @Field("customer") String customerId);
    
}
