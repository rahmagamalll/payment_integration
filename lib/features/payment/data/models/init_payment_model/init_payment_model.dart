class InitPaymentModel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKeySecret;

  InitPaymentModel(
      {required this.clientSecret,
      required this.customerId,
      required this.ephemeralKeySecret});
}
