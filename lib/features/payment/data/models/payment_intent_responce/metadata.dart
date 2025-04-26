class Metadata {
  final String? key;
  final String? value;

  Metadata({this.key, this.value});
  factory Metadata.fromJson(Map<String, dynamic> json) {
    return Metadata(
      key: json['key'] as String?,
      value: json['value'] as String?,
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'key': key ?? 'default_key',
      'value': value ?? 'default_value',
    };
  }
}
