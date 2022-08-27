// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'create_account_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CreateAccountModel _$$_CreateAccountModelFromJson(
        Map<String, dynamic> json) =>
    _$_CreateAccountModel(
      email: json['email'] as String,
      password: json['password'] as String,
      referralCode: json['referal_code'] as String?,
    );

Map<String, dynamic> _$$_CreateAccountModelToJson(
        _$_CreateAccountModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'password': instance.password,
      'referal_code': instance.referralCode,
    };
