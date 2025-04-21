// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'payment_intent_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PaymentIntentResponce _$PaymentIntentResponceFromJson(
        Map<String, dynamic> json) =>
    PaymentIntentResponce(
      id: json['id'] as String?,
      object: json['object'] as String?,
      amount: (json['amount'] as num?)?.toInt(),
      amountCapturable: (json['amountCapturable'] as num?)?.toInt(),
      amountDetails: json['amountDetails'] == null
          ? null
          : AmountDetails.fromJson(
              json['amountDetails'] as Map<String, dynamic>),
      amountReceived: (json['amountReceived'] as num?)?.toInt(),
      application: json['application'],
      applicationFeeAmount: json['applicationFeeAmount'],
      automaticPaymentMethods: json['automaticPaymentMethods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automaticPaymentMethods'] as Map<String, dynamic>),
      canceledAt: json['canceledAt'],
      cancellationReason: json['cancellationReason'],
      captureMethod: json['captureMethod'] as String?,
      clientSecret: json['clientSecret'] as String?,
      confirmationMethod: json['confirmationMethod'] as String?,
      created: (json['created'] as num?)?.toInt(),
      currency: json['currency'] as String?,
      customer: json['customer'],
      description: json['description'],
      invoice: json['invoice'],
      lastPaymentError: json['lastPaymentError'],
      latestCharge: json['latestCharge'],
      livemode: json['livemode'] as bool?,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      nextAction: json['nextAction'],
      onBehalfOf: json['onBehalfOf'],
      paymentMethod: json['paymentMethod'],
      paymentMethodOptions: json['paymentMethodOptions'] == null
          ? null
          : PaymentMethodOptions.fromJson(
              json['paymentMethodOptions'] as Map<String, dynamic>),
      paymentMethodTypes: (json['paymentMethodTypes'] as List<dynamic>?)
          ?.map((e) => e as String)
          .toList(),
      processing: json['processing'],
      receiptEmail: json['receiptEmail'],
      review: json['review'],
      setupFutureUsage: json['setupFutureUsage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statementDescriptor'],
      statementDescriptorSuffix: json['statementDescriptorSuffix'],
      status: json['status'] as String?,
      transferData: json['transferData'],
      transferGroup: json['transferGroup'],
    );

Map<String, dynamic> _$PaymentIntentResponceToJson(
        PaymentIntentResponce instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'amount': instance.amount,
      'amountCapturable': instance.amountCapturable,
      'amountDetails': instance.amountDetails,
      'amountReceived': instance.amountReceived,
      'application': instance.application,
      'applicationFeeAmount': instance.applicationFeeAmount,
      'automaticPaymentMethods': instance.automaticPaymentMethods,
      'canceledAt': instance.canceledAt,
      'cancellationReason': instance.cancellationReason,
      'captureMethod': instance.captureMethod,
      'clientSecret': instance.clientSecret,
      'confirmationMethod': instance.confirmationMethod,
      'created': instance.created,
      'currency': instance.currency,
      'customer': instance.customer,
      'description': instance.description,
      'invoice': instance.invoice,
      'lastPaymentError': instance.lastPaymentError,
      'latestCharge': instance.latestCharge,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'nextAction': instance.nextAction,
      'onBehalfOf': instance.onBehalfOf,
      'paymentMethod': instance.paymentMethod,
      'paymentMethodOptions': instance.paymentMethodOptions,
      'paymentMethodTypes': instance.paymentMethodTypes,
      'processing': instance.processing,
      'receiptEmail': instance.receiptEmail,
      'review': instance.review,
      'setupFutureUsage': instance.setupFutureUsage,
      'shipping': instance.shipping,
      'source': instance.source,
      'statementDescriptor': instance.statementDescriptor,
      'statementDescriptorSuffix': instance.statementDescriptorSuffix,
      'status': instance.status,
      'transferData': instance.transferData,
      'transferGroup': instance.transferGroup,
    };
