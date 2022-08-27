// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sign_up_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SignUpResponseModel _$$_SignUpResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_SignUpResponseModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      token: json['token'] as String,
      avatar: json['avatar'] as String?,
    );

Map<String, dynamic> _$$_SignUpResponseModelToJson(
        _$_SignUpResponseModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'token': instance.token,
      'avatar': instance.avatar,
    };
