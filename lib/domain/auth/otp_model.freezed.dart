// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'otp_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OTPModel _$OTPModelFromJson(Map<String, dynamic> json) {
  return _OTPModel.fromJson(json);
}

/// @nodoc
class _$OTPModelTearOff {
  const _$OTPModelTearOff();

  _OTPModel call(
      {required String email,
      required String otp,
      @JsonKey(name: 'device_token') required String deviceToken}) {
    return _OTPModel(
      email: email,
      otp: otp,
      deviceToken: deviceToken,
    );
  }

  OTPModel fromJson(Map<String, Object?> json) {
    return OTPModel.fromJson(json);
  }
}

/// @nodoc
const $OTPModel = _$OTPModelTearOff();

/// @nodoc
mixin _$OTPModel {
  String get email => throw _privateConstructorUsedError;
  String get otp => throw _privateConstructorUsedError;
  @JsonKey(name: 'device_token')
  String get deviceToken => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OTPModelCopyWith<OTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OTPModelCopyWith<$Res> {
  factory $OTPModelCopyWith(OTPModel value, $Res Function(OTPModel) then) =
      _$OTPModelCopyWithImpl<$Res>;
  $Res call(
      {String email,
      String otp,
      @JsonKey(name: 'device_token') String deviceToken});
}

/// @nodoc
class _$OTPModelCopyWithImpl<$Res> implements $OTPModelCopyWith<$Res> {
  _$OTPModelCopyWithImpl(this._value, this._then);

  final OTPModel _value;
  // ignore: unused_field
  final $Res Function(OTPModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$OTPModelCopyWith<$Res> implements $OTPModelCopyWith<$Res> {
  factory _$OTPModelCopyWith(_OTPModel value, $Res Function(_OTPModel) then) =
      __$OTPModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {String email,
      String otp,
      @JsonKey(name: 'device_token') String deviceToken});
}

/// @nodoc
class __$OTPModelCopyWithImpl<$Res> extends _$OTPModelCopyWithImpl<$Res>
    implements _$OTPModelCopyWith<$Res> {
  __$OTPModelCopyWithImpl(_OTPModel _value, $Res Function(_OTPModel) _then)
      : super(_value, (v) => _then(v as _OTPModel));

  @override
  _OTPModel get _value => super._value as _OTPModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? otp = freezed,
    Object? deviceToken = freezed,
  }) {
    return _then(_OTPModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      otp: otp == freezed
          ? _value.otp
          : otp // ignore: cast_nullable_to_non_nullable
              as String,
      deviceToken: deviceToken == freezed
          ? _value.deviceToken
          : deviceToken // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OTPModel implements _OTPModel {
  _$_OTPModel(
      {required this.email,
      required this.otp,
      @JsonKey(name: 'device_token') required this.deviceToken});

  factory _$_OTPModel.fromJson(Map<String, dynamic> json) =>
      _$$_OTPModelFromJson(json);

  @override
  final String email;
  @override
  final String otp;
  @override
  @JsonKey(name: 'device_token')
  final String deviceToken;

  @override
  String toString() {
    return 'OTPModel(email: $email, otp: $otp, deviceToken: $deviceToken)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _OTPModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.otp, otp) &&
            const DeepCollectionEquality()
                .equals(other.deviceToken, deviceToken));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(otp),
      const DeepCollectionEquality().hash(deviceToken));

  @JsonKey(ignore: true)
  @override
  _$OTPModelCopyWith<_OTPModel> get copyWith =>
      __$OTPModelCopyWithImpl<_OTPModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OTPModelToJson(this);
  }
}

abstract class _OTPModel implements OTPModel {
  factory _OTPModel(
          {required String email,
          required String otp,
          @JsonKey(name: 'device_token') required String deviceToken}) =
      _$_OTPModel;

  factory _OTPModel.fromJson(Map<String, dynamic> json) = _$_OTPModel.fromJson;

  @override
  String get email;
  @override
  String get otp;
  @override
  @JsonKey(name: 'device_token')
  String get deviceToken;
  @override
  @JsonKey(ignore: true)
  _$OTPModelCopyWith<_OTPModel> get copyWith =>
      throw _privateConstructorUsedError;
}
