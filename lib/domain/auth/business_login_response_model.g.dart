// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'business_login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BusinessLoginResponseModel _$$_BusinessLoginResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_BusinessLoginResponseModel(
      token: json['token'] as String,
      userDataModel:
          BusinessDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_BusinessLoginResponseModelToJson(
        _$_BusinessLoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'data': instance.userDataModel,
    };

_$_BusinessDataModel _$$_BusinessDataModelFromJson(Map<String, dynamic> json) =>
    _$_BusinessDataModel(
      id: json['id'] as int,
      businessName: json['bussiness_name'] as String?,
      contactPersonName: json['contact_name'] as String?,
      logo: json['logo'] as String?,
      referralCode: json['referal_code'] as String?,
      description: json['description'] as String?,
      building: json['building'] as String?,
      area: json['area'] as String?,
      phoneNumber: json['phone_number'] as String?,
      phoneCode: json['phone_code'] as String?,
      email: json['email'] as String,
    );

Map<String, dynamic> _$$_BusinessDataModelToJson(
        _$_BusinessDataModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'bussiness_name': instance.businessName,
      'contact_name': instance.contactPersonName,
      'logo': instance.logo,
      'referal_code': instance.referralCode,
      'description': instance.description,
      'building': instance.building,
      'area': instance.area,
      'phone_number': instance.phoneNumber,
      'phone_code': instance.phoneCode,
      'email': instance.email,
    };
