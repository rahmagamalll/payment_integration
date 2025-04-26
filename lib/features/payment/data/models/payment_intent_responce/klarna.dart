class Klarna {
  dynamic preferredLocale;

  Klarna({this.preferredLocale});

  factory Klarna.fromJson(Map<String, dynamic> json) => Klarna(
        preferredLocale: json['preferred_locale'] as dynamic,
      );

  Map<String, dynamic> toJson() => {
        'preferred_locale': preferredLocale,
      };
}
