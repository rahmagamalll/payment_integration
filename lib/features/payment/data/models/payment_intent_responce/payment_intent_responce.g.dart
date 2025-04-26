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
      amount: (json['amount'] as num?)?.toInt() ?? 0,
      amountCapturable: (json['amountCapturable'] as num?)?.toInt() ?? 0,
      amountDetails: json['amountDetails'] == null
          ? null
          : AmountDetails.fromJson(
              json['amountDetails'] as Map<String, dynamic>),
      amountReceived: (json['amountReceived'] as num?)?.toInt() ?? 0,
      application: json['application'],
      applicationFeeAmount: json['applicationFeeAmount'],
      automaticPaymentMethods: json['automaticPaymentMethods'] == null
          ? null
          : AutomaticPaymentMethods.fromJson(
              json['automaticPaymentMethods'] as Map<String, dynamic>),
      canceledAt: json['canceledAt'],
      cancellationReason: json['cancellationReason'],
      captureMethod: json['captureMethod'] as String?,
      clientSecret: json['client_secret'] as String?,
      confirmationMethod: json['confirmationMethod'] as String?,
      created: (json['created'] as num?)?.toInt(),
      currency: json['currency'] as String? ?? 'USD',
      customer: json['customer'] as String?,
      description: json['description'],
      lastPaymentError: json['lastPaymentError'],
      latestCharge: json['latestCharge'],
      livemode: json['livemode'] as bool? ?? false,
      metadata: json['metadata'] == null
          ? null
          : Metadata.fromJson(json['metadata'] as Map<String, dynamic>),
      nextAction: json['nextAction'],
      onBehalfOf: json['onBehalfOf'],
      paymentMethod: json['paymentMethod'],
      paymentMethodConfigurationDetails:
          json['paymentMethodConfigurationDetails'] == null
              ? null
              : PaymentMethodConfigurationDetails.fromJson(
                  json['paymentMethodConfigurationDetails']
                      as Map<String, dynamic>),
      paymentMethodOptions: json['paymentMethodOptions'] == null
          ? null
          : PaymentMethodOptions.fromJson(
              json['paymentMethodOptions'] as Map<String, dynamic>),
      paymentMethodTypes:
          json['paymentMethodTypes'] as List<dynamic>? ?? const [],
      processing: json['processing'],
      receiptEmail: json['receiptEmail'],
      review: json['review'],
      setupFutureUsage: json['setupFutureUsage'],
      shipping: json['shipping'],
      source: json['source'],
      statementDescriptor: json['statementDescriptor'],
      statementDescriptorSuffix: json['statementDescriptorSuffix'],
      status: json['status'] as String? ?? 'pending',
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
      'client_secret': instance.clientSecret,
      'confirmationMethod': instance.confirmationMethod,
      'created': instance.created,
      'currency': instance.currency,
      'customer': instance.customer,
      'description': instance.description,
      'lastPaymentError': instance.lastPaymentError,
      'latestCharge': instance.latestCharge,
      'livemode': instance.livemode,
      'metadata': instance.metadata,
      'nextAction': instance.nextAction,
      'onBehalfOf': instance.onBehalfOf,
      'paymentMethod': instance.paymentMethod,
      'paymentMethodConfigurationDetails':
          instance.paymentMethodConfigurationDetails,
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
