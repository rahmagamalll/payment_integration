// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntentRequest _$PaymentIntentRequestFromJson(
        Map<String, dynamic> json) =>
    PaymentIntentRequest(
      amount: json['amount'] as String,
      currency: json['currency'] as String,
      customerId: json['customerId'] as String?,
    );

Map<String, dynamic> _$PaymentIntentRequestToJson(
        PaymentIntentRequest instance) =>
    <String, dynamic>{
      'amount': instance.amount,
      'currency': instance.currency,
      'customerId': instance.customerId,
    };
