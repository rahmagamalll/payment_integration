import 'package:flutter/material.dart';
import 'package:payment/core/networking/stripe_sevices.dart';
import 'package:payment/features/payment/data/models/payment_intent_request/payment_intent_request.dart';

class PaymentServicesRepo {
  final StripeSevices stripeSevices;
  PaymentServicesRepo(this.stripeSevices);

  Future stripePayment(BuildContext context,
      {required PaymentIntentRequest paymentIntentRequest}) async {
    await stripeSevices.makePayment(context,
        paymentIntentRequest: paymentIntentRequest);
  }
}
