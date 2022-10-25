// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'otp_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OTPModel _$$_OTPModelFromJson(Map<String, dynamic> json) => _$_OTPModel(
      email: json['email'] as String,
      otp: json['otp'] as String,
      deviceToken: json['device_token'] as String,
    );

Map<String, dynamic> _$$_OTPModelToJson(_$_OTPModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'otp': instance.otp,
      'device_token': instance.deviceToken,
    };
