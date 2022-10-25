// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'create_account_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CreateAccountModel _$CreateAccountModelFromJson(Map<String, dynamic> json) {
  return _CreateAccountModel.fromJson(json);
}

/// @nodoc
class _$CreateAccountModelTearOff {
  const _$CreateAccountModelTearOff();

  _CreateAccountModel call(
      {required String email, required String password, String? referralCode}) {
    return _CreateAccountModel(
      email: email,
      password: password,
      referralCode: referralCode,
    );
  }

  CreateAccountModel fromJson(Map<String, Object?> json) {
    return CreateAccountModel.fromJson(json);
  }
}

/// @nodoc
const $CreateAccountModel = _$CreateAccountModelTearOff();

/// @nodoc
mixin _$CreateAccountModel {
  String get email => throw _privateConstructorUsedError;
  String get password => throw _privateConstructorUsedError;
  String? get referralCode => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CreateAccountModelCopyWith<CreateAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CreateAccountModelCopyWith<$Res> {
  factory $CreateAccountModelCopyWith(
          CreateAccountModel value, $Res Function(CreateAccountModel) then) =
      _$CreateAccountModelCopyWithImpl<$Res>;
  $Res call({String email, String password, String? referralCode});
}

/// @nodoc
class _$CreateAccountModelCopyWithImpl<$Res>
    implements $CreateAccountModelCopyWith<$Res> {
  _$CreateAccountModelCopyWithImpl(this._value, this._then);

  final CreateAccountModel _value;
  // ignore: unused_field
  final $Res Function(CreateAccountModel) _then;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_value.copyWith(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$CreateAccountModelCopyWith<$Res>
    implements $CreateAccountModelCopyWith<$Res> {
  factory _$CreateAccountModelCopyWith(
          _CreateAccountModel value, $Res Function(_CreateAccountModel) then) =
      __$CreateAccountModelCopyWithImpl<$Res>;
  @override
  $Res call({String email, String password, String? referralCode});
}

/// @nodoc
class __$CreateAccountModelCopyWithImpl<$Res>
    extends _$CreateAccountModelCopyWithImpl<$Res>
    implements _$CreateAccountModelCopyWith<$Res> {
  __$CreateAccountModelCopyWithImpl(
      _CreateAccountModel _value, $Res Function(_CreateAccountModel) _then)
      : super(_value, (v) => _then(v as _CreateAccountModel));

  @override
  _CreateAccountModel get _value => super._value as _CreateAccountModel;

  @override
  $Res call({
    Object? email = freezed,
    Object? password = freezed,
    Object? referralCode = freezed,
  }) {
    return _then(_CreateAccountModel(
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
      password: password == freezed
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
      referralCode: referralCode == freezed
          ? _value.referralCode
          : referralCode // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CreateAccountModel implements _CreateAccountModel {
  _$_CreateAccountModel(
      {required this.email, required this.password, this.referralCode});

  factory _$_CreateAccountModel.fromJson(Map<String, dynamic> json) =>
      _$$_CreateAccountModelFromJson(json);

  @override
  final String email;
  @override
  final String password;
  @override
  final String? referralCode;

  @override
  String toString() {
    return 'CreateAccountModel(email: $email, password: $password, referralCode: $referralCode)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CreateAccountModel &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.password, password) &&
            const DeepCollectionEquality()
                .equals(other.referralCode, referralCode));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(password),
      const DeepCollectionEquality().hash(referralCode));

  @JsonKey(ignore: true)
  @override
  _$CreateAccountModelCopyWith<_CreateAccountModel> get copyWith =>
      __$CreateAccountModelCopyWithImpl<_CreateAccountModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CreateAccountModelToJson(this);
  }
}

abstract class _CreateAccountModel implements CreateAccountModel {
  factory _CreateAccountModel(
      {required String email,
      required String password,
      String? referralCode}) = _$_CreateAccountModel;

  factory _CreateAccountModel.fromJson(Map<String, dynamic> json) =
      _$_CreateAccountModel.fromJson;

  @override
  String get email;
  @override
  String get password;
  @override
  String? get referralCode;
  @override
  @JsonKey(ignore: true)
  _$CreateAccountModelCopyWith<_CreateAccountModel> get copyWith =>
      throw _privateConstructorUsedError;
}
