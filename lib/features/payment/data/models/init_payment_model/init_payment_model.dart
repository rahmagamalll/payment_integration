class InitPaymentModel {
  final String clientSecret;
  final String customerId;
  final String ephemeralKeySecret;
  final String name;

  InitPaymentModel(
      {required this.clientSecret,
      required this.name,
      required this.customerId,
      required this.ephemeralKeySecret});
}
