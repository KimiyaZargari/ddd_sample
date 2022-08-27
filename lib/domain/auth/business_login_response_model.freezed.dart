// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'business_login_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

BusinessLoginResponseModel _$BusinessLoginResponseModelFromJson(
    Map<String, dynamic> json) {
  return _BusinessLoginResponseModel.fromJson(json);
}

/// @nodoc
class _$BusinessLoginResponseModelTearOff {
  const _$BusinessLoginResponseModelTearOff();

  _BusinessLoginResponseModel call(
      {required String token,
      @JsonKey(name: 'data') required BusinessDataModel userDataModel}) {
    return _BusinessLoginResponseModel(
      token: token,
      userDataModel: userDataModel,
    );
  }

  BusinessLoginResponseModel fromJson(Map<String, Object?> json) {
    return BusinessLoginResponseModel.fromJson(json);
  }
}

/// @nodoc
const $BusinessLoginResponseModel = _$BusinessLoginResponseModelTearOff();

/// @nodoc
mixin _$BusinessLoginResponseModel {
  String get token => throw _privateConstructorUsedError;
  @JsonKey(name: 'data')
  BusinessDataModel get userDataModel => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessLoginResponseModelCopyWith<BusinessLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessLoginResponseModelCopyWith<$Res> {
  factory $BusinessLoginResponseModelCopyWith(BusinessLoginResponseModel value,
          $Res Function(BusinessLoginResponseModel) then) =
      _$BusinessLoginResponseModelCopyWithImpl<$Res>;
  $Res call(
      {String token, @JsonKey(name: 'data') BusinessDataModel userDataModel});

  $BusinessDataModelCopyWith<$Res> get userDataModel;
}

/// @nodoc
class _$BusinessLoginResponseModelCopyWithImpl<$Res>
    implements $BusinessLoginResponseModelCopyWith<$Res> {
  _$BusinessLoginResponseModelCopyWithImpl(this._value, this._then);

  final BusinessLoginResponseModel _value;
  // ignore: unused_field
  final $Res Function(BusinessLoginResponseModel) _then;

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
              as BusinessDataModel,
    ));
  }

  @override
  $BusinessDataModelCopyWith<$Res> get userDataModel {
    return $BusinessDataModelCopyWith<$Res>(_value.userDataModel, (value) {
      return _then(_value.copyWith(userDataModel: value));
    });
  }
}

/// @nodoc
abstract class _$BusinessLoginResponseModelCopyWith<$Res>
    implements $BusinessLoginResponseModelCopyWith<$Res> {
  factory _$BusinessLoginResponseModelCopyWith(
          _BusinessLoginResponseModel value,
          $Res Function(_BusinessLoginResponseModel) then) =
      __$BusinessLoginResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String token, @JsonKey(name: 'data') BusinessDataModel userDataModel});

  @override
  $BusinessDataModelCopyWith<$Res> get userDataModel;
}

/// @nodoc
class __$BusinessLoginResponseModelCopyWithImpl<$Res>
    extends _$BusinessLoginResponseModelCopyWithImpl<$Res>
    implements _$BusinessLoginResponseModelCopyWith<$Res> {
  __$BusinessLoginResponseModelCopyWithImpl(_BusinessLoginResponseModel _value,
      $Res Function(_BusinessLoginResponseModel) _then)
      : super(_value, (v) => _then(v as _BusinessLoginResponseModel));

  @override
  _BusinessLoginResponseModel get _value =>
      super._value as _BusinessLoginResponseModel;

  @override
  $Res call({
    Object? token = freezed,
    Object? userDataModel = freezed,
  }) {
    return _then(_BusinessLoginResponseModel(
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      userDataModel: userDataModel == freezed
          ? _value.userDataModel
          : userDataModel // ignore: cast_nullable_to_non_nullable
              as BusinessDataModel,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessLoginResponseModel implements _BusinessLoginResponseModel {
  _$_BusinessLoginResponseModel(
      {required this.token,
      @JsonKey(name: 'data') required this.userDataModel});

  factory _$_BusinessLoginResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessLoginResponseModelFromJson(json);

  @override
  final String token;
  @override
  @JsonKey(name: 'data')
  final BusinessDataModel userDataModel;

  @override
  String toString() {
    return 'BusinessLoginResponseModel(token: $token, userDataModel: $userDataModel)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BusinessLoginResponseModel &&
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
  _$BusinessLoginResponseModelCopyWith<_BusinessLoginResponseModel>
      get copyWith => __$BusinessLoginResponseModelCopyWithImpl<
          _BusinessLoginResponseModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessLoginResponseModelToJson(this);
  }
}

abstract class _BusinessLoginResponseModel
    implements BusinessLoginResponseModel {
  factory _BusinessLoginResponseModel(
          {required String token,
          @JsonKey(name: 'data') required BusinessDataModel userDataModel}) =
      _$_BusinessLoginResponseModel;

  factory _BusinessLoginResponseModel.fromJson(Map<String, dynamic> json) =
      _$_BusinessLoginResponseModel.fromJson;

  @override
  String get token;
  @override
  @JsonKey(name: 'data')
  BusinessDataModel get userDataModel;
  @override
  @JsonKey(ignore: true)
  _$BusinessLoginResponseModelCopyWith<_BusinessLoginResponseModel>
      get copyWith => throw _privateConstructorUsedError;
}

BusinessDataModel _$BusinessDataModelFromJson(Map<String, dynamic> json) {
  return _BusinessDataModel.fromJson(json);
}

/// @nodoc
class _$BusinessDataModelTearOff {
  const _$BusinessDataModelTearOff();

  _BusinessDataModel call(
      {required int id,
      @JsonKey(name: 'bussiness_name') required String? businessName,
      @JsonKey(name: 'contact_name') required String? contactPersonName,
      required String? logo,
      @JsonKey(name: 'referal_code') required String? referralCode,
      required String? description,
      required String? building,
      required String? area,
      @JsonKey(name: 'phone_number') required String? phoneNumber,
      @JsonKey(name: 'phone_code') required String? phoneCode,
      required String email}) {
    return _BusinessDataModel(
      id: id,
      businessName: businessName,
      contactPersonName: contactPersonName,
      logo: logo,
      referralCode: referralCode,
      description: description,
      building: building,
      area: area,
      phoneNumber: phoneNumber,
      phoneCode: phoneCode,
      email: email,
    );
  }

  BusinessDataModel fromJson(Map<String, Object?> json) {
    return BusinessDataModel.fromJson(json);
  }
}

/// @nodoc
const $BusinessDataModel = _$BusinessDataModelTearOff();

/// @nodoc
mixin _$BusinessDataModel {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'bussiness_name')
  String? get businessName => throw _privateConstructorUsedError;
  @JsonKey(name: 'contact_name')
  String? get contactPersonName => throw _privateConstructorUsedError;
  String? get logo => throw _privateConstructorUsedError;
  @JsonKey(name: 'referal_code')
  String? get referralCode => throw _privateConstructorUsedError;
  String? get description => throw _privateConstructorUsedError;
  String? get building => throw _privateConstructorUsedError;
  String? get area => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_number')
  String? get phoneNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'phone_code')
  String? get phoneCode => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $BusinessDataModelCopyWith<BusinessDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BusinessDataModelCopyWith<$Res> {
  factory $BusinessDataModelCopyWith(
          BusinessDataModel value, $Res Function(BusinessDataModel) then) =
      _$BusinessDataModelCopyWithImpl<$Res>;
  $Res call(
      {int id,
      @JsonKey(name: 'bussiness_name') String? businessName,
      @JsonKey(name: 'contact_name') String? contactPersonName,
      String? logo,
      @JsonKey(name: 'referal_code') String? referralCode,
      String? description,
      String? building,
      String? area,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String email});
}

/// @nodoc
class _$BusinessDataModelCopyWithImpl<$Res>
    implements $BusinessDataModelCopyWith<$Res> {
  _$BusinessDataModelCopyWithImpl(this._value, this._then);

  final BusinessDataModel _value;
  // ignore: unused_field
  final $Res Function(BusinessDataModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? businessName = freezed,
    Object? contactPersonName = freezed,
    Object? logo = freezed,
    Object? referralCode = freezed,
    Object? description = freezed,
    Object? building = freezed,
    Object? area = freezed,
    Object? phoneNumber = freezed,
    Object? phoneCode = freezed,
    Object? email = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonName: contactPersonName == freezed
          ? _value.contactPersonName
          : contactPersonName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$BusinessDataModelCopyWith<$Res>
    implements $BusinessDataModelCopyWith<$Res> {
  factory _$BusinessDataModelCopyWith(
          _BusinessDataModel value, $Res Function(_BusinessDataModel) then) =
      __$BusinessDataModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int id,
      @JsonKey(name: 'bussiness_name') String? businessName,
      @JsonKey(name: 'contact_name') String? contactPersonName,
      String? logo,
      @JsonKey(name: 'referal_code') String? referralCode,
      String? description,
      String? building,
      String? area,
      @JsonKey(name: 'phone_number') String? phoneNumber,
      @JsonKey(name: 'phone_code') String? phoneCode,
      String email});
}

/// @nodoc
class __$BusinessDataModelCopyWithImpl<$Res>
    extends _$BusinessDataModelCopyWithImpl<$Res>
    implements _$BusinessDataModelCopyWith<$Res> {
  __$BusinessDataModelCopyWithImpl(
      _BusinessDataModel _value, $Res Function(_BusinessDataModel) _then)
      : super(_value, (v) => _then(v as _BusinessDataModel));

  @override
  _BusinessDataModel get _value => super._value as _BusinessDataModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? businessName = freezed,
    Object? contactPersonName = freezed,
    Object? logo = freezed,
    Object? referralCode = freezed,
    Object? description = freezed,
    Object? building = freezed,
    Object? area = freezed,
    Object? phoneNumber = freezed,
    Object? phoneCode = freezed,
    Object? email = freezed,
  }) {
    return _then(_BusinessDataModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      businessName: businessName == freezed
          ? _value.businessName
          : businessName // ignore: cast_nullable_to_non_nullable
              as String?,
      contactPersonName: contactPersonName == freezed
          ? _value.contactPersonName
          : contactPersonName // ignore: cast_nullable_to_non_nullable
              as String?,
      logo: logo == freezed
          ? _value.logo
          : logo // ignore: cast_nullable_to_non_nullable
              as String?,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
      description: description == freezed
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String?,
      building: building == freezed
          ? _value.building
          : building // ignore: cast_nullable_to_non_nullable
              as String?,
      area: area == freezed
          ? _value.area
          : area // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneNumber: phoneNumber == freezed
          ? _value.phoneNumber
          : phoneNumber // ignore: cast_nullable_to_non_nullable
              as String?,
      phoneCode: phoneCode == freezed
          ? _value.phoneCode
          : phoneCode // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_BusinessDataModel implements _BusinessDataModel {
  _$_BusinessDataModel(
      {required this.id,
      @JsonKey(name: 'bussiness_name') required this.businessName,
      @JsonKey(name: 'contact_name') required this.contactPersonName,
      required this.logo,
      @JsonKey(name: 'referal_code') required this.referralCode,
      required this.description,
      required this.building,
      required this.area,
      @JsonKey(name: 'phone_number') required this.phoneNumber,
      @JsonKey(name: 'phone_code') required this.phoneCode,
      required this.email});

  factory _$_BusinessDataModel.fromJson(Map<String, dynamic> json) =>
      _$$_BusinessDataModelFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'bussiness_name')
  final String? businessName;
  @override
  @JsonKey(name: 'contact_name')
  final String? contactPersonName;
  @override
  final String? logo;
  @override
  @JsonKey(name: 'referal_code')
  final String? referralCode;
  @override
  final String? description;
  @override
  final String? building;
  @override
  final String? area;
  @override
  @JsonKey(name: 'phone_number')
  final String? phoneNumber;
  @override
  @JsonKey(name: 'phone_code')
  final String? phoneCode;
  @override
  final String email;

  @override
  String toString() {
    return 'BusinessDataModel(id: $id, businessName: $businessName, contactPersonName: $contactPersonName, logo: $logo, referralCode: $referralCode, description: $description, building: $building, area: $area, phoneNumber: $phoneNumber, phoneCode: $phoneCode, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _BusinessDataModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality()
                .equals(other.businessName, businessName) &&
            const DeepCollectionEquality()
                .equals(other.contactPersonName, contactPersonName) &&
            const DeepCollectionEquality().equals(other.logo, logo) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode) &&
            const DeepCollectionEquality()
                .equals(other.description, description) &&
            const DeepCollectionEquality().equals(other.building, building) &&
            const DeepCollectionEquality().equals(other.area, area) &&
            const DeepCollectionEquality()
                .equals(other.phoneNumber, phoneNumber) &&
            const DeepCollectionEquality().equals(other.phoneCode, phoneCode) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(businessName),
      const DeepCollectionEquality().hash(contactPersonName),
      const DeepCollectionEquality().hash(logo),
      const DeepCollectionEquality().hash(referralCode),
      const DeepCollectionEquality().hash(description),
      const DeepCollectionEquality().hash(building),
      const DeepCollectionEquality().hash(area),
      const DeepCollectionEquality().hash(phoneNumber),
      const DeepCollectionEquality().hash(phoneCode),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  _$BusinessDataModelCopyWith<_BusinessDataModel> get copyWith =>
      __$BusinessDataModelCopyWithImpl<_BusinessDataModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_BusinessDataModelToJson(this);
  }
}

abstract class _BusinessDataModel implements BusinessDataModel {
  factory _BusinessDataModel(
      {required int id,
      @JsonKey(name: 'bussiness_name') required String? businessName,
      @JsonKey(name: 'contact_name') required String? contactPersonName,
      required String? logo,
      @JsonKey(name: 'referal_code') required String? referralCode,
      required String? description,
      required String? building,
      required String? area,
      @JsonKey(name: 'phone_number') required String? phoneNumber,
      @JsonKey(name: 'phone_code') required String? phoneCode,
      required String email}) = _$_BusinessDataModel;

  factory _BusinessDataModel.fromJson(Map<String, dynamic> json) =
      _$_BusinessDataModel.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'bussiness_name')
  String? get businessName;
  @override
  @JsonKey(name: 'contact_name')
  String? get contactPersonName;
  @override
  String? get logo;
  @override
  @JsonKey(name: 'referal_code')
  String? get referralCode;
  @override
  String? get description;
  @override
  String? get building;
  @override
  String? get area;
  @override
  @JsonKey(name: 'phone_number')
  String? get phoneNumber;
  @override
  @JsonKey(name: 'phone_code')
  String? get phoneCode;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$BusinessDataModelCopyWith<_BusinessDataModel> get copyWith =>
      throw _privateConstructorUsedError;
}
