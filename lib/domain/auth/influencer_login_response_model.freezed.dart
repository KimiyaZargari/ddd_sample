// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'influencer_login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

InfluencerLoginResponseModel _$InfluencerLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _InfluencerLoginResponseModel.fromJson(json);
}

/// @nodoc
class _$InfluencerLoginResponseModelTearOff {
  const _$InfluencerLoginResponseModelTearOff();

  _InfluencerLoginResponseModel call(
      {required String token,
      @JsonKey(name: 'data') required InfluencerDataModel userDataModel}) {
    return _InfluencerLoginResponseModel(
      token: token,
      userDataModel: userDataModel,
    );
  }

  InfluencerLoginResponseModel fromJson(Map<String, Object?> json) {
    return InfluencerLoginResponseModel.fromJson(json);
  }
}

/// @nodoc
const $InfluencerLoginResponseModel = _$InfluencerLoginResponseModelTearOff();

/// @nodoc
mixin _$InfluencerLoginResponseModel {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  InfluencerDataModel get userDataModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfluencerLoginResponseModelCopyWith<InfluencerLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfluencerLoginResponseModelCopyWith<$Res> {
  factory $InfluencerLoginResponseModelCopyWith(
          InfluencerLoginResponseModel value,
          $Res Function(InfluencerLoginResponseModel) then) =
      _$InfluencerLoginResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String token, @JsonKey(name: 'data') InfluencerDataModel userDataModel});

  $InfluencerDataModelCopyWith<$Res> get userDataModel;
}

/// @nodoc
class _$InfluencerLoginResponseModelCopyWithImpl<$Res>
    implements $InfluencerLoginResponseModelCopyWith<$Res> {
  _$InfluencerLoginResponseModelCopyWithImpl(this._value, this._then);

  final InfluencerLoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(InfluencerLoginResponseModel) _then;

  @override
  $Res call({
    Object? token = freezed,
    Object? userDataModel = freezed,
  }) {
    return _then(_value.copyWith(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userDataModel: userDataModel == freezed
          ? _value.userDataModel
          : userDataModel // ignore: cast_nullable_to_non_nullable
              as InfluencerDataModel,
    ));
  }

  @override
  $InfluencerDataModelCopyWith<$Res> get userDataModel {
    return $InfluencerDataModelCopyWith<$Res>(_value.userDataModel, (value) {
      return _then(_value.copyWith(userDataModel: value));
    });
  }
}

/// @nodoc
abstract class _$InfluencerLoginResponseModelCopyWith<$Res>
    implements $InfluencerLoginResponseModelCopyWith<$Res> {
  factory _$InfluencerLoginResponseModelCopyWith(
          _InfluencerLoginResponseModel value,
          $Res Function(_InfluencerLoginResponseModel) then) =
      __$InfluencerLoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token, @JsonKey(name: 'data') InfluencerDataModel userDataModel});

  @override
  $InfluencerDataModelCopyWith<$Res> get userDataModel;
}

/// @nodoc
class __$InfluencerLoginResponseModelCopyWithImpl<$Res>
    extends _$InfluencerLoginResponseModelCopyWithImpl<$Res>
    implements _$InfluencerLoginResponseModelCopyWith<$Res> {
  __$InfluencerLoginResponseModelCopyWithImpl(
      _InfluencerLoginResponseModel _value,
      $Res Function(_InfluencerLoginResponseModel) _then)
      : super(_value, (v) => _then(v as _InfluencerLoginResponseModel));

  @override
  _InfluencerLoginResponseModel get _value =>
      super._value as _InfluencerLoginResponseModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? userDataModel = freezed,
  }) {
    return _then(_InfluencerLoginResponseModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userDataModel: userDataModel == freezed
          ? _value.userDataModel
          : userDataModel // ignore: cast_nullable_to_non_nullable
              as InfluencerDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfluencerLoginResponseModel implements _InfluencerLoginResponseModel {
  _$_InfluencerLoginResponseModel(
      {required this.token,
      @JsonKey(name: 'data') required this.userDataModel});

  factory _$_InfluencerLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfluencerLoginResponseModelFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'data')
  final InfluencerDataModel userDataModel;

  @override
  String toString() {
    return 'InfluencerLoginResponseModel(token: $token, userDataModel: $userDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfluencerLoginResponseModel &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality()
                .equals(other.userDataModel, userDataModel));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(userDataModel));

  @JsonKey(ignore: true)
  @override
  _$InfluencerLoginResponseModelCopyWith<_InfluencerLoginResponseModel>
      get copyWith => __$InfluencerLoginResponseModelCopyWithImpl<
          _InfluencerLoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfluencerLoginResponseModelToJson(this);
  }
}

abstract class _InfluencerLoginResponseModel
    implements InfluencerLoginResponseModel {
  factory _InfluencerLoginResponseModel(
          {required String token,
          @JsonKey(name: 'data') required InfluencerDataModel userDataModel}) =
      _$_InfluencerLoginResponseModel;

  factory _InfluencerLoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_InfluencerLoginResponseModel.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'data')
  InfluencerDataModel get userDataModel;
  @override
  @JsonKey(ignore: true)
  _$InfluencerLoginResponseModelCopyWith<_InfluencerLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

InfluencerDataModel _$InfluencerDataModelFromJson(Map<String, dynamic> json) {
  return _InfluencerDataModel.fromJson(json);
}

/// @nodoc
class _$InfluencerDataModelTearOff {
  const _$InfluencerDataModelTearOff();

  _InfluencerDataModel call(
      {required String email,
      @JsonKey(name: 'content_types')
          required List<CheckBoxModel>? contentTypes,
      @JsonKey(name: 'phone_number')
          required String? phoneNumber,
      @JsonKey(name: 'phone_code')
          required String? phoneCode,
      @JsonKey(name: 'referal_code')
          required String referralCode,
      required int points,
      @JsonKey(name: 'influencer_details')
          required InfluencerDetails influencerDetails}) {
    return _InfluencerDataModel(
      email: email,
      contentTypes: contentTypes,
      phoneNumber: phoneNumber,
      phoneCode: phoneCode,
      referralCode: referralCode,
      points: points,
      influencerDetails: influencerDetails,
    );
  }

  InfluencerDataModel fromJson(Map<String, Object?> json) {
    return InfluencerDataModel.fromJson(json);
  }
}

/// @nodoc
const $InfluencerDataModel = _$InfluencerDataModelTearOff();

/// @nodoc
mixin _$InfluencerDataModel {
  String get email => throw _privateConstructorUsedError;
  @JsonKey(name: 'content_types')
  List<CheckBoxModel>? get contentTypes => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
  @JsonKey(name: 'referal_code')
  String get referralCode => throw _privateConstructorUsedError;
  int get points => throw _privateConstructorUsedError;
  @JsonKey(name: 'influencer_details')
  InfluencerDetails get influencerDetails => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfluencerDataModelCopyWith<InfluencerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfluencerDataModelCopyWith<$Res> {
  factory $InfluencerDataModelCopyWith(
          InfluencerDataModel value, $Res Function(InfluencerDataModel) then) =
      _$InfluencerDataModelCopyWithImpl<$Res>;
  $Res call(
      {String email,
      @JsonKey(name: 'content_types')
          List<CheckBoxModel>? contentTypes,
      @JsonKey(name: 'phone_number')
          String? phoneNumber,
      @JsonKey(name: 'phone_code')
          String? phoneCode,
      @JsonKey(name: 'referal_code')
          String referralCode,
      int points,
      @JsonKey(name: 'influencer_details')
          InfluencerDetails influencerDetails});

  $InfluencerDetailsCopyWith<$Res> get influencerDetails;
}

/// @nodoc
class _$InfluencerDataModelCopyWithImpl<$Res>
    implements $InfluencerDataModelCopyWith<$Res> {
  _$InfluencerDataModelCopyWithImpl(this._value, this._then);

  final InfluencerDataModel _value;
  // ignore: unused_field
  final $Res Function(InfluencerDataModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? contentTypes = freezed,
    Object? phoneNumber = freezed,
    Object? phoneCode = freezed,
    Object? referralCode = freezed,
    Object? points = freezed,
    Object? influencerDetails = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypes: contentTypes == freezed
          ? _value.contentTypes
          : contentTypes // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      influencerDetails: influencerDetails == freezed
          ? _value.influencerDetails
          : influencerDetails // ignore: cast_nullable_to_non_nullable
              as InfluencerDetails,
    ));
  }

  @override
  $InfluencerDetailsCopyWith<$Res> get influencerDetails {
    return $InfluencerDetailsCopyWith<$Res>(_value.influencerDetails, (value) {
      return _then(_value.copyWith(influencerDetails: value));
    });
  }
}

/// @nodoc
abstract class _$InfluencerDataModelCopyWith<$Res>
    implements $InfluencerDataModelCopyWith<$Res> {
  factory _$InfluencerDataModelCopyWith(_InfluencerDataModel value,
          $Res Function(_InfluencerDataModel) then) =
      __$InfluencerDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      @JsonKey(name: 'content_types')
          List<CheckBoxModel>? contentTypes,
      @JsonKey(name: 'phone_number')
          String? phoneNumber,
      @JsonKey(name: 'phone_code')
          String? phoneCode,
      @JsonKey(name: 'referal_code')
          String referralCode,
      int points,
      @JsonKey(name: 'influencer_details')
          InfluencerDetails influencerDetails});

  @override
  $InfluencerDetailsCopyWith<$Res> get influencerDetails;
}

/// @nodoc
class __$InfluencerDataModelCopyWithImpl<$Res>
    extends _$InfluencerDataModelCopyWithImpl<$Res>
    implements _$InfluencerDataModelCopyWith<$Res> {
  __$InfluencerDataModelCopyWithImpl(
      _InfluencerDataModel _value, $Res Function(_InfluencerDataModel) _then)
      : super(_value, (v) => _then(v as _InfluencerDataModel));

  @override
  _InfluencerDataModel get _value => super._value as _InfluencerDataModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? contentTypes = freezed,
    Object? phoneNumber = freezed,
    Object? phoneCode = freezed,
    Object? referralCode = freezed,
    Object? points = freezed,
    Object? influencerDetails = freezed,
  }) {
    return _then(_InfluencerDataModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      contentTypes: contentTypes == freezed
          ? _value.contentTypes
          : contentTypes // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String,
      points: points == freezed
          ? _value.points
          : points // ignore: cast_nullable_to_non_nullable
              as int,
      influencerDetails: influencerDetails == freezed
          ? _value.influencerDetails
          : influencerDetails // ignore: cast_nullable_to_non_nullable
              as InfluencerDetails,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfluencerDataModel implements _InfluencerDataModel {
  _$_InfluencerDataModel(
      {required this.email,
      @JsonKey(name: 'content_types') required this.contentTypes,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'phone_code') required this.phoneCode,
      @JsonKey(name: 'referal_code') required this.referralCode,
      required this.points,
      @JsonKey(name: 'influencer_details') required this.influencerDetails});

  factory _$_InfluencerDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_InfluencerDataModelFromJson(json);

  @override
  final String email;
  @override
  @JsonKey(name: 'content_types')
  final List<CheckBoxModel>? contentTypes;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'phone_code')
  final String? phoneCode;
  @override
  @JsonKey(name: 'referal_code')
  final String referralCode;
  @override
  final int points;
  @override
  @JsonKey(name: 'influencer_details')
  final InfluencerDetails influencerDetails;

  @override
  String toString() {
    return 'InfluencerDataModel(email: $email, contentTypes: $contentTypes, phoneNumber: $phoneNumber, phoneCode: $phoneCode, referralCode: $referralCode, points: $points, influencerDetails: $influencerDetails)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfluencerDataModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality()
                .equals(other.contentTypes, contentTypes) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.phoneCode, phoneCode) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode) &&
            const DeepCollectionEquality().equals(other.points, points) &&
            const DeepCollectionEquality()
                .equals(other.influencerDetails, influencerDetails));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(contentTypes),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(phoneCode),
      const DeepCollectionEquality().hash(referralCode),
      const DeepCollectionEquality().hash(points),
      const DeepCollectionEquality().hash(influencerDetails));

  @JsonKey(ignore: true)
  @override
  _$InfluencerDataModelCopyWith<_InfluencerDataModel> get copyWith =>
      __$InfluencerDataModelCopyWithImpl<_InfluencerDataModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfluencerDataModelToJson(this);
  }
}

abstract class _InfluencerDataModel implements InfluencerDataModel {
  factory _InfluencerDataModel(
          {required String email,
          @JsonKey(name: 'content_types')
              required List<CheckBoxModel>? contentTypes,
          @JsonKey(name: 'phone_number')
              required String? phoneNumber,
          @JsonKey(name: 'phone_code')
              required String? phoneCode,
          @JsonKey(name: 'referal_code')
              required String referralCode,
          required int points,
          @JsonKey(name: 'influencer_details')
              required InfluencerDetails influencerDetails}) =
      _$_InfluencerDataModel;

  factory _InfluencerDataModel.fromJson(Map<String, dynamic> json) =
      _$_InfluencerDataModel.fromJson;

  @override
  String get email;
  @override
  @JsonKey(name: 'content_types')
  List<CheckBoxModel>? get contentTypes;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'phone_code')
  String? get phoneCode;
  @override
  @JsonKey(name: 'referal_code')
  String get referralCode;
  @override
  int get points;
  @override
  @JsonKey(name: 'influencer_details')
  InfluencerDetails get influencerDetails;
  @override
  @JsonKey(ignore: true)
  _$InfluencerDataModelCopyWith<_InfluencerDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

InfluencerDetails _$InfluencerDetailsFromJson(Map<String, dynamic> json) {
  return _InfluencerDetails.fromJson(json);
}

/// @nodoc
class _$InfluencerDetailsTearOff {
  const _$InfluencerDetailsTearOff();

  _InfluencerDetails call(
      {required List<CheckBoxModel>? interests,
      required int? gender,
      required String? description,
      required String? name,
      @JsonKey(name: 'dob') required DateTime? birthdate,
      @JsonKey(name: 'profile_image') required String? profileImage,
      @JsonKey(name: 'youtube_id') required String? youtubeId,
      @JsonKey(name: 'instagram_id') required String? instagramId,
      @JsonKey(name: 'facebook_id') required String? facebookId,
      @JsonKey(name: 'twitter_id') required String? twitterId,
      required String? location}) {
    return _InfluencerDetails(
      interests: interests,
      gender: gender,
      description: description,
      name: name,
      birthdate: birthdate,
      profileImage: profileImage,
      youtubeId: youtubeId,
      instagramId: instagramId,
      facebookId: facebookId,
      twitterId: twitterId,
      location: location,
    );
  }

  InfluencerDetails fromJson(Map<String, Object?> json) {
    return InfluencerDetails.fromJson(json);
  }
}

/// @nodoc
const $InfluencerDetails = _$InfluencerDetailsTearOff();

/// @nodoc
mixin _$InfluencerDetails {
  List<CheckBoxModel>? get interests => throw _privateConstructorUsedError;
  int? get gender => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'dob')
  DateTime? get birthdate => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image')
  String? get profileImage => throw _privateConstructorUsedError;
  @JsonKey(name: 'youtube_id')
  String? get youtubeId => throw _privateConstructorUsedError;
  @JsonKey(name: 'instagram_id')
  String? get instagramId => throw _privateConstructorUsedError;
  @JsonKey(name: 'facebook_id')
  String? get facebookId => throw _privateConstructorUsedError;
  @JsonKey(name: 'twitter_id')
  String? get twitterId => throw _privateConstructorUsedError;
  String? get location => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $InfluencerDetailsCopyWith<InfluencerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $InfluencerDetailsCopyWith<$Res> {
  factory $InfluencerDetailsCopyWith(
          InfluencerDetails value, $Res Function(InfluencerDetails) then) =
      _$InfluencerDetailsCopyWithImpl<$Res>;
  $Res call(
      {List<CheckBoxModel>? interests,
      int? gender,
      String? description,
      String? name,
      @JsonKey(name: 'dob') DateTime? birthdate,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'instagram_id') String? instagramId,
      @JsonKey(name: 'facebook_id') String? facebookId,
      @JsonKey(name: 'twitter_id') String? twitterId,
      String? location});
}

/// @nodoc
class _$InfluencerDetailsCopyWithImpl<$Res>
    implements $InfluencerDetailsCopyWith<$Res> {
  _$InfluencerDetailsCopyWithImpl(this._value, this._then);

  final InfluencerDetails _value;
  // ignore: unused_field
  final $Res Function(InfluencerDetails) _then;

  @override
  $Res call({
    Object? interests = freezed,
    Object? gender = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? birthdate = freezed,
    Object? profileImage = freezed,
    Object? youtubeId = freezed,
    Object? instagramId = freezed,
    Object? facebookId = freezed,
    Object? twitterId = freezed,
    Object? location = freezed,
  }) {
    return _then(_value.copyWith(
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: youtubeId == freezed
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramId: instagramId == freezed
          ? _value.instagramId
          : instagramId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: facebookId == freezed
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterId: twitterId == freezed
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$InfluencerDetailsCopyWith<$Res>
    implements $InfluencerDetailsCopyWith<$Res> {
  factory _$InfluencerDetailsCopyWith(
          _InfluencerDetails value, $Res Function(_InfluencerDetails) then) =
      __$InfluencerDetailsCopyWithImpl<$Res>;
  @override
  $Res call(
      {List<CheckBoxModel>? interests,
      int? gender,
      String? description,
      String? name,
      @JsonKey(name: 'dob') DateTime? birthdate,
      @JsonKey(name: 'profile_image') String? profileImage,
      @JsonKey(name: 'youtube_id') String? youtubeId,
      @JsonKey(name: 'instagram_id') String? instagramId,
      @JsonKey(name: 'facebook_id') String? facebookId,
      @JsonKey(name: 'twitter_id') String? twitterId,
      String? location});
}

/// @nodoc
class __$InfluencerDetailsCopyWithImpl<$Res>
    extends _$InfluencerDetailsCopyWithImpl<$Res>
    implements _$InfluencerDetailsCopyWith<$Res> {
  __$InfluencerDetailsCopyWithImpl(
      _InfluencerDetails _value, $Res Function(_InfluencerDetails) _then)
      : super(_value, (v) => _then(v as _InfluencerDetails));

  @override
  _InfluencerDetails get _value => super._value as _InfluencerDetails;

  @override
  $Res call({
    Object? interests = freezed,
    Object? gender = freezed,
    Object? description = freezed,
    Object? name = freezed,
    Object? birthdate = freezed,
    Object? profileImage = freezed,
    Object? youtubeId = freezed,
    Object? instagramId = freezed,
    Object? facebookId = freezed,
    Object? twitterId = freezed,
    Object? location = freezed,
  }) {
    return _then(_InfluencerDetails(
      interests: interests == freezed
          ? _value.interests
          : interests // ignore: cast_nullable_to_non_nullable
              as List<CheckBoxModel>?,
      gender: gender == freezed
          ? _value.gender
          : gender // ignore: cast_nullable_to_non_nullable
              as int?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      birthdate: birthdate == freezed
          ? _value.birthdate
          : birthdate // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      profileImage: profileImage == freezed
          ? _value.profileImage
          : profileImage // ignore: cast_nullable_to_non_nullable
              as String?,
      youtubeId: youtubeId == freezed
          ? _value.youtubeId
          : youtubeId // ignore: cast_nullable_to_non_nullable
              as String?,
      instagramId: instagramId == freezed
          ? _value.instagramId
          : instagramId // ignore: cast_nullable_to_non_nullable
              as String?,
      facebookId: facebookId == freezed
          ? _value.facebookId
          : facebookId // ignore: cast_nullable_to_non_nullable
              as String?,
      twitterId: twitterId == freezed
          ? _value.twitterId
          : twitterId // ignore: cast_nullable_to_non_nullable
              as String?,
      location: location == freezed
          ? _value.location
          : location // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_InfluencerDetails implements _InfluencerDetails {
  _$_InfluencerDetails(
      {required this.interests,
      required this.gender,
      required this.description,
      required this.name,
      @JsonKey(name: 'dob') required this.birthdate,
      @JsonKey(name: 'profile_image') required this.profileImage,
      @JsonKey(name: 'youtube_id') required this.youtubeId,
      @JsonKey(name: 'instagram_id') required this.instagramId,
      @JsonKey(name: 'facebook_id') required this.facebookId,
      @JsonKey(name: 'twitter_id') required this.twitterId,
      required this.location});

  factory _$_InfluencerDetails.fromJson(Map<String, dynamic> json) =>
      _$$_InfluencerDetailsFromJson(json);

  @override
  final List<CheckBoxModel>? interests;
  @override
  final int? gender;
  @override
  final String? description;
  @override
  final String? name;
  @override
  @JsonKey(name: 'dob')
  final DateTime? birthdate;
  @override
  @JsonKey(name: 'profile_image')
  final String? profileImage;
  @override
  @JsonKey(name: 'youtube_id')
  final String? youtubeId;
  @override
  @JsonKey(name: 'instagram_id')
  final String? instagramId;
  @override
  @JsonKey(name: 'facebook_id')
  final String? facebookId;
  @override
  @JsonKey(name: 'twitter_id')
  final String? twitterId;
  @override
  final String? location;

  @override
  String toString() {
    return 'InfluencerDetails(interests: $interests, gender: $gender, description: $description, name: $name, birthdate: $birthdate, profileImage: $profileImage, youtubeId: $youtubeId, instagramId: $instagramId, facebookId: $facebookId, twitterId: $twitterId, location: $location)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _InfluencerDetails &&
            const DeepCollectionEquality().equals(other.interests, interests) &&
            const DeepCollectionEquality().equals(other.gender, gender) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.birthdate, birthdate) &&
            const DeepCollectionEquality()
                .equals(other.profileImage, profileImage) &&
            const DeepCollectionEquality().equals(other.youtubeId, youtubeId) &&
            const DeepCollectionEquality()
                .equals(other.instagramId, instagramId) &&
            const DeepCollectionEquality()
                .equals(other.facebookId, facebookId) &&
            const DeepCollectionEquality().equals(other.twitterId, twitterId) &&
            const DeepCollectionEquality().equals(other.location, location));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(interests),
      const DeepCollectionEquality().hash(gender),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(birthdate),
      const DeepCollectionEquality().hash(profileImage),
      const DeepCollectionEquality().hash(youtubeId),
      const DeepCollectionEquality().hash(instagramId),
      const DeepCollectionEquality().hash(facebookId),
      const DeepCollectionEquality().hash(twitterId),
      const DeepCollectionEquality().hash(location));

  @JsonKey(ignore: true)
  @override
  _$InfluencerDetailsCopyWith<_InfluencerDetails> get copyWith =>
      __$InfluencerDetailsCopyWithImpl<_InfluencerDetails>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_InfluencerDetailsToJson(this);
  }
}

abstract class _InfluencerDetails implements InfluencerDetails {
  factory _InfluencerDetails(
      {required List<CheckBoxModel>? interests,
      required int? gender,
      required String? description,
      required String? name,
      @JsonKey(name: 'dob') required DateTime? birthdate,
      @JsonKey(name: 'profile_image') required String? profileImage,
      @JsonKey(name: 'youtube_id') required String? youtubeId,
      @JsonKey(name: 'instagram_id') required String? instagramId,
      @JsonKey(name: 'facebook_id') required String? facebookId,
      @JsonKey(name: 'twitter_id') required String? twitterId,
      required String? location}) = _$_InfluencerDetails;

  factory _InfluencerDetails.fromJson(Map<String, dynamic> json) =
      _$_InfluencerDetails.fromJson;

  @override
  List<CheckBoxModel>? get interests;
  @override
  int? get gender;
  @override
  String? get description;
  @override
  String? get name;
  @override
  @JsonKey(name: 'dob')
  DateTime? get birthdate;
  @override
  @JsonKey(name: 'profile_image')
  String? get profileImage;
  @override
  @JsonKey(name: 'youtube_id')
  String? get youtubeId;
  @override
  @JsonKey(name: 'instagram_id')
  String? get instagramId;
  @override
  @JsonKey(name: 'facebook_id')
  String? get facebookId;
  @override
  @JsonKey(name: 'twitter_id')
  String? get twitterId;
  @override
  String? get location;
  @override
  @JsonKey(ignore: true)
  _$InfluencerDetailsCopyWith<_InfluencerDetails> get copyWith =>
      throw _privateConstructorUsedError;
}
