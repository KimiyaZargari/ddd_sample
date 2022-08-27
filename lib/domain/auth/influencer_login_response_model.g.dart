// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'influencer_login_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_InfluencerLoginResponseModel _$$_InfluencerLoginResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_InfluencerLoginResponseModel(
      token: json['token'] as String,
      userDataModel:
          InfluencerDataModel.fromJson(json['data'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InfluencerLoginResponseModelToJson(
        _$_InfluencerLoginResponseModel instance) =>
    <String, dynamic>{
      'token': instance.token,
      'data': instance.userDataModel,
    };

_$_InfluencerDataModel _$$_InfluencerDataModelFromJson(
        Map<String, dynamic> json) =>
    _$_InfluencerDataModel(
      email: json['email'] as String,
      contentTypes: (json['content_types'] as List<dynamic>?)
          ?.map((e) => CheckBoxModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      phoneNumber: json['phone_number'] as String?,
      phoneCode: json['phone_code'] as String?,
      referralCode: json['referal_code'] as String,
      points: json['points'] as int,
      influencerDetails: InfluencerDetails.fromJson(
          json['influencer_details'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_InfluencerDataModelToJson(
        _$_InfluencerDataModel instance) =>
    <String, dynamic>{
      'email': instance.email,
      'content_types': instance.contentTypes,
      'phone_number': instance.phoneNumber,
      'phone_code': instance.phoneCode,
      'referal_code': instance.referralCode,
      'points': instance.points,
      'influencer_details': instance.influencerDetails,
    };

_$_InfluencerDetails _$$_InfluencerDetailsFromJson(Map<String, dynamic> json) =>
    _$_InfluencerDetails(
      interests: (json['interests'] as List<dynamic>?)
          ?.map((e) => CheckBoxModel.fromJson(e as Map<String, dynamic>))
          .toList(),
      gender: json['gender'] as int?,
      description: json['description'] as String?,
      name: json['name'] as String?,
      birthdate:
          json['dob'] == null ? null : DateTime.parse(json['dob'] as String),
      profileImage: json['profile_image'] as String?,
      youtubeId: json['youtube_id'] as String?,
      instagramId: json['instagram_id'] as String?,
      facebookId: json['facebook_id'] as String?,
      twitterId: json['twitter_id'] as String?,
      location: json['location'] as String?,
    );

Map<String, dynamic> _$$_InfluencerDetailsToJson(
        _$_InfluencerDetails instance) =>
    <String, dynamic>{
      'interests': instance.interests,
      'gender': instance.gender,
      'description': instance.description,
      'name': instance.name,
      'dob': instance.birthdate?.toIso8601String(),
      'profile_image': instance.profileImage,
      'youtube_id': instance.youtubeId,
      'instagram_id': instance.instagramId,
      'facebook_id': instance.facebookId,
      'twitter_id': instance.twitterId,
      'location': instance.location,
    };
