import 'affirm.dart';
import 'amazon_pay.dart';
import 'card.dart';
import 'cashapp.dart';
import 'klarna.dart';
import 'link.dart';
import 'package:json_annotation/json_annotation.dart';
part 'payment_method_options.g.dart';
@JsonSerializable()

class PaymentMethodOptions {
  Affirm? affirm;
  AmazonPay? amazonPay;
  Card? card;
  Cashapp? cashapp;
  Klarna? klarna;
  Link? link;

  PaymentMethodOptions({
    this.affirm,
    this.amazonPay,
    this.card,
    this.cashapp,
    this.klarna,
    this.link,
  });

  factory PaymentMethodOptions.fromJson(Map<String, dynamic> json) =>
      _$PaymentMethodOptionsFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentMethodOptionsToJson(this);
}
