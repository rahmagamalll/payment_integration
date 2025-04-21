import 'package:json_annotation/json_annotation.dart';
import 'package:payment/features/payment/data/models/epheneral_key_responce/associated_object.dart';
part 'epheneral_key_responce.g.dart';
@JsonSerializable()
class EpheneralKeyResponce {
  
  String? id;
  String? object;
  List<AssociatedObject>? associatedObjects;
  int? created;
  int? expires;
  bool? livemode;
  String? secret;

  EpheneralKeyResponce({
    this.id,
    this.object,
    this.associatedObjects,
    this.created,
    this.expires,
    this.livemode,
    this.secret,
  });

     factory EpheneralKeyResponce.fromJson(Map<String, dynamic> json) =>
      _$EpheneralKeyResponceFromJson(json);
  Map<String, dynamic> toJson() => _$EpheneralKeyResponceToJson(this);

}
