// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'epheneral_key_responce.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

EpheneralKeyResponce _$EpheneralKeyResponceFromJson(
        Map<String, dynamic> json) =>
    EpheneralKeyResponce(
      id: json['id'] as String?,
      object: json['object'] as String?,
      associatedObjects: (json['associatedObjects'] as List<dynamic>?)
          ?.map((e) => AssociatedObject.fromJson(e as Map<String, dynamic>))
          .toList(),
      created: (json['created'] as num?)?.toInt(),
      expires: (json['expires'] as num?)?.toInt(),
      livemode: json['livemode'] as bool?,
      secret: json['secret'] as String?,
    );

Map<String, dynamic> _$EpheneralKeyResponceToJson(
        EpheneralKeyResponce instance) =>
    <String, dynamic>{
      'id': instance.id,
      'object': instance.object,
      'associatedObjects': instance.associatedObjects,
      'created': instance.created,
      'expires': instance.expires,
      'livemode': instance.livemode,
      'secret': instance.secret,
    };
