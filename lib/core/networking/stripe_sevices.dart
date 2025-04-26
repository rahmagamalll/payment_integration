import 'package:dartz/dartz.dart';
import 'package:flutter/material.dart';
import 'package:flutter_stripe/flutter_stripe.dart';
import 'package:payment/core/helper/extensions.dart';
import 'package:payment/core/helper/stripe_keys.dart';
import 'package:payment/core/networking/api_error_handler.dart';
import 'package:payment/core/networking/api_error_model.dart';
import 'package:payment/core/networking/api_service.dart';
import 'package:payment/core/routing/routes.dart';
import 'package:payment/features/payment/data/models/epheneral_key_responce/epheneral_key_responce.dart';
import 'package:payment/features/payment/data/models/init_payment_model/init_payment_model.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';
import 'package:payment/features/payment/data/models/payment_intent_responce/payment_intent_responce.dart';

class StripeSevices {
  final ApiService apiService;
  StripeSevices(this.apiService);

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
      final response =
          await apiService.createEphemeralKey(customerId, "2023-10-16");
      return Right(response);
    } catch (error) {
      return Left(ApiErrorHandler.handle(error));
    }
  }

  Future<void> initStripe() async {
    Stripe.publishableKey = stripeKeys.publishableKey;

    await Stripe.instance.applySettings();
  }

  Future initPaymentSheet({required InitPaymentModel initPaymentModel}) async {
    await initStripe();
    await Stripe.instance.initPaymentSheet(
      paymentSheetParameters: SetupPaymentSheetParameters(
        paymentIntentClientSecret: initPaymentModel.clientSecret,
        customerEphemeralKeySecret: initPaymentModel.ephemeralKeySecret,
        customerId: initPaymentModel.customerId,
        merchantDisplayName: initPaymentModel.name,
      ),
    );
  }

  Future displayPaymentSheet() async {
    await Stripe.instance.presentPaymentSheet();
  }

  Future makePayment(BuildContext context,
      {required PaymentIntentRequest paymentIntentRequest}) async {
    final paymentIntentResult = await createPaymentIntent(paymentIntentRequest);
    paymentIntentResult.fold(
      (error) {
        throw Exception(error.message);
      },
      (paymentIntentModel) async {
        final ephemeralKeyResult =
            await createEphemeralKey(paymentIntentRequest.customerId!);
        ephemeralKeyResult.fold(
          (error) {
            throw Exception(error.message);
          },
          (ephemeralKeyModel) async {
            final initPaymentSheetModel = InitPaymentModel(
              clientSecret: paymentIntentModel.clientSecret ?? '',
              customerId: paymentIntentRequest.customerId!,
              ephemeralKeySecret: ephemeralKeyModel.secret!,
              name: 'ahmed',
            );
            await initPaymentSheet(initPaymentModel: initPaymentSheetModel);
            await displayPaymentSheet();
            // ignore: use_build_context_synchronously
            // CustomSnackBar.show(context, 'Payment successful!');
            context.pushReplacementNamed(Routes.thankYouScreen);
          },
        );
      },
    );
  }
}
