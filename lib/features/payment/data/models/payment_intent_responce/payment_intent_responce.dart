import 'amount_details.dart';
import 'automatic_payment_methods.dart';
import 'metadata.dart';
import 'payment_method_configuration_details.dart';
import 'payment_method_options.dart';
import 'package:json_annotation/json_annotation.dart';
part 'payment_intent_responce.g.dart';

@JsonSerializable()
@JsonSerializable()
class PaymentIntentResponce {
  String? id;
  String? object;
  int? amount;
  int? amountCapturable;
  AmountDetails? amountDetails;
  int? amountReceived;
  dynamic application;
  dynamic applicationFeeAmount;
  AutomaticPaymentMethods? automaticPaymentMethods;
  dynamic canceledAt;
  dynamic cancellationReason;
  String? captureMethod;
  @JsonKey(name: 'client_secret')
  String? clientSecret;
  String? confirmationMethod;
  int? created;
  String? currency;
  String? customer;
  dynamic description;
  dynamic lastPaymentError;
  dynamic latestCharge;
  bool? livemode;
  Metadata? metadata;
  dynamic nextAction;
  dynamic onBehalfOf;
  dynamic paymentMethod;
  PaymentMethodConfigurationDetails? paymentMethodConfigurationDetails;
  PaymentMethodOptions? paymentMethodOptions;
  List<dynamic>? paymentMethodTypes;
  dynamic processing;
  dynamic receiptEmail;
  dynamic review;
  dynamic setupFutureUsage;
  dynamic shipping;
  dynamic source;
  dynamic statementDescriptor;
  dynamic statementDescriptorSuffix;
  String? status;
  dynamic transferData;
  dynamic transferGroup;

  // Constructor with default values
  PaymentIntentResponce({
    this.id,
    this.object,
    this.amount = 0, // default value 0
    this.amountCapturable = 0, // default value 0
    this.amountDetails,
    this.amountReceived = 0, // default value 0
    this.application,
    this.applicationFeeAmount,
    this.automaticPaymentMethods,
    this.canceledAt,
    this.cancellationReason,
    this.captureMethod,
    this.clientSecret,
    this.confirmationMethod,
    this.created,
    this.currency = 'USD', // default currency
    this.customer,
    this.description,
    this.lastPaymentError,
    this.latestCharge,
    this.livemode = false, // default false
    this.metadata,
    this.nextAction,
    this.onBehalfOf,
    this.paymentMethod,
    this.paymentMethodConfigurationDetails,
    this.paymentMethodOptions,
    this.paymentMethodTypes = const [], // empty list by default
    this.processing,
    this.receiptEmail,
    this.review,
    this.setupFutureUsage,
    this.shipping,
    this.source,
    this.statementDescriptor,
    this.statementDescriptorSuffix,
    this.status = 'pending', // default status
    this.transferData,
    this.transferGroup,
  });

  factory PaymentIntentResponce.fromJson(Map<String, dynamic> json) =>
      _$PaymentIntentResponceFromJson(json);

  Map<String, dynamic> toJson() => _$PaymentIntentResponceToJson(this);
}
