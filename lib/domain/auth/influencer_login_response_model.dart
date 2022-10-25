import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:ddd_sample/domain/auth/login_response_model.dart';
import 'package:ddd_sample/domain/core/check_box_model.dart';

part 'influencer_login_response_model.freezed.dart';

part 'influencer_login_response_model.g.dart';

@freezed
class InfluencerLoginResponseModel
    with _$InfluencerLoginResponseModel
    implements LoginResponseModel {
  factory InfluencerLoginResponseModel({
    required String token,
    @JsonKey(name: 'data') required InfluencerDataModel userDataModel,
  }) = _InfluencerLoginResponseModel;

  factory InfluencerLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$InfluencerLoginResponseModelFromJson(json);
}

@freezed
class InfluencerDataModel with _$InfluencerDataModel implements UserDataModel {
  factory InfluencerDataModel({
    required String email,
    @JsonKey(name: 'content_types') required List<CheckBoxModel>? contentTypes,
    @JsonKey(name: 'phone_number') required String? phoneNumber,
    @JsonKey(name: 'phone_code') required String? phoneCode,
    @JsonKey(name: 'referal_code') required String referralCode,
    required int points,
    @JsonKey(name: 'influencer_details')
        required InfluencerDetails influencerDetails,
  }) = _InfluencerDataModel;

  factory InfluencerDataModel.fromJson(Map<String, dynamic> json) =>
      _$InfluencerDataModelFromJson(json);
}

@freezed
class InfluencerDetails with _$InfluencerDetails {
  factory InfluencerDetails({
    required List<CheckBoxModel>? interests,
    required int? gender,
    required String? description,
    required String? name,
    @JsonKey(name: 'dob') required DateTime? birthdate,
    @JsonKey(name: 'profile_image') required String? profileImage,
    @JsonKey(name: 'youtube_id') required String? youtubeId,
    @JsonKey(name: 'instagram_id') required String? instagramId,
    @JsonKey(name: 'facebook_id') required String? facebookId,
    @JsonKey(name: 'twitter_id') required String? twitterId,
    required String? location,
  }) = _InfluencerDetails;

  factory InfluencerDetails.fromJson(Map<String, dynamic> json) =>
      _$InfluencerDetailsFromJson(json);
}

