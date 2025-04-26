// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_method_options.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentMethodOptions _$PaymentMethodOptionsFromJson(
        Map<String, dynamic> json) =>
    PaymentMethodOptions(
      affirm: json['affirm'] == null
          ? null
          : Affirm.fromJson(json['affirm'] as Map<String, dynamic>),
      amazonPay: json['amazonPay'] == null
          ? null
          : AmazonPay.fromJson(json['amazonPay'] as Map<String, dynamic>),
      card: json['card'] == null
          ? null
          : Card.fromJson(json['card'] as Map<String, dynamic>),
      cashapp: json['cashapp'] == null
          ? null
          : Cashapp.fromJson(json['cashapp'] as Map<String, dynamic>),
      klarna: json['klarna'] == null
          ? null
          : Klarna.fromJson(json['klarna'] as Map<String, dynamic>),
      link: json['link'] == null
          ? null
          : Link.fromJson(json['link'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$PaymentMethodOptionsToJson(
        PaymentMethodOptions instance) =>
    <String, dynamic>{
      'affirm': instance.affirm,
      'amazonPay': instance.amazonPay,
      'card': instance.card,
      'cashapp': instance.cashapp,
      'klarna': instance.klarna,
      'link': instance.link,
    };
