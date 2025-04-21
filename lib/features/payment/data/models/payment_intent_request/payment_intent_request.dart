import 'package:json_annotation/json_annotation.dart';
part 'payment_intent_request.g.dart';

@JsonSerializable()
class PaymentIntentRequest {
  final String? amount;
  final String? currency;
  final String? customer;

  PaymentIntentRequest({
    this.amount,
    this.currency,
    this.customer,
  });
 
   factory PaymentIntentRequest.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentRequestFromJson(json);
  Map<String, dynamic> toJson() => _$PaymentIntentRequestToJson(this);
  
}