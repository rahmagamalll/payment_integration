import 'package:dartz/dartz.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/networking/api_error_handler.dart';
import 'package:payment/core/networking/api_error_model.dart';
import 'package:payment/core/networking/api_service.dart';
import 'package:payment/features/payment/data/models/epheneral_key_responce/epheneral_key_responce.dart';
import 'package:payment/features/payment/data/models/init_payment_model/init_payment_model.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';
import 'package:payment/features/payment/data/models/payment_intent_responce/payment_intent_responce.dart';

class StripeServicesRepo {
  final ApiService apiService;
  StripeServicesRepo(this.apiService);

  Future<Either<ApiErrorModel, PaymentIntentResponce>> createPaymentIntent(
      PaymentIntentRequest paymentIntentRequest) async {
    try {
      final response =
          await apiService.createPaymentIntent(paymentIntentRequest);
      return Right(response);
    } catch (error) {
      return Left(ApiErrorHandler.handle(error));
    }
  }

  Future<Either<ApiErrorModel, EpheneralKeyResponce>> createEphemeralKey(
      String customerId) async {
    try {
      final response = await apiService.createEphemeralKey(customerId);
      return Right(response);
    } catch (error) {
      return Left(ApiErrorHandler.handle(error));
    }
  }

  Future initPaymentSheet(
      {required InitPaymentModel initPaymentModel}) async {
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentModel.clientSecret,
        customerEphemeralKeySecret:
            initPaymentModel.ephemeralKeySecret,
        customerId: initPaymentModel.customerId,
        merchantDisplayName: initPaymentModel.name,
      ),
    );
  }
  
   Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }
}
