

import 'package:json_annotation/json_annotation.dart';
part 'associated_object.g.dart';
@JsonSerializable()
class AssociatedObject {
  String? id;
  String? type;

  AssociatedObject({this.id, this.type});

   factory AssociatedObject.fromJson(Map<String, dynamic> json) =>
      _$AssociatedObjectFromJson(json);
  Map<String, dynamic> toJson() => _$AssociatedObjectToJson(this);
}
