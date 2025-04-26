class AmazonPay {
  dynamic expressCheckoutElementSessionId;

  AmazonPay({this.expressCheckoutElementSessionId});

  factory AmazonPay.fromJson(Map<String, dynamic> json) => AmazonPay(
        expressCheckoutElementSessionId:
            json['express_checkout_element_session_id'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'express_checkout_element_session_id': expressCheckoutElementSessionId,
      };
}
