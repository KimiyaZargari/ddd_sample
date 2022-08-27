// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'sign_up_response_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

SignUpResponseModel _$SignUpResponseModelFromJson(Map<String, dynamic> json) {
  return _SignUpResponseModel.fromJson(json);
}

/// @nodoc
class _$SignUpResponseModelTearOff {
  const _$SignUpResponseModelTearOff();

  _SignUpResponseModel call(
      {required int? id,
      required String? name,
      required String? email,
      required String token,
      required String? avatar}) {
    return _SignUpResponseModel(
      id: id,
      name: name,
      email: email,
      token: token,
      avatar: avatar,
    );
  }

  SignUpResponseModel fromJson(Map<String, Object?> json) {
    return SignUpResponseModel.fromJson(json);
  }
}

/// @nodoc
const $SignUpResponseModel = _$SignUpResponseModelTearOff();

/// @nodoc
mixin _$SignUpResponseModel {
  int? get id => throw _privateConstructorUsedError;
  String? get name => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get token => throw _privateConstructorUsedError;
  String? get avatar => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $SignUpResponseModelCopyWith<SignUpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SignUpResponseModelCopyWith<$Res> {
  factory $SignUpResponseModelCopyWith(
          SignUpResponseModel value, $Res Function(SignUpResponseModel) then) =
      _$SignUpResponseModelCopyWithImpl<$Res>;
  $Res call(
      {int? id, String? name, String? email, String token, String? avatar});
}

/// @nodoc
class _$SignUpResponseModelCopyWithImpl<$Res>
    implements $SignUpResponseModelCopyWith<$Res> {
  _$SignUpResponseModelCopyWithImpl(this._value, this._then);

  final SignUpResponseModel _value;
  // ignore: unused_field
  final $Res Function(SignUpResponseModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class _$SignUpResponseModelCopyWith<$Res>
    implements $SignUpResponseModelCopyWith<$Res> {
  factory _$SignUpResponseModelCopyWith(_SignUpResponseModel value,
          $Res Function(_SignUpResponseModel) then) =
      __$SignUpResponseModelCopyWithImpl<$Res>;
  @override
  $Res call(
      {int? id, String? name, String? email, String token, String? avatar});
}

/// @nodoc
class __$SignUpResponseModelCopyWithImpl<$Res>
    extends _$SignUpResponseModelCopyWithImpl<$Res>
    implements _$SignUpResponseModelCopyWith<$Res> {
  __$SignUpResponseModelCopyWithImpl(
      _SignUpResponseModel _value, $Res Function(_SignUpResponseModel) _then)
      : super(_value, (v) => _then(v as _SignUpResponseModel));

  @override
  _SignUpResponseModel get _value => super._value as _SignUpResponseModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
    Object? email = freezed,
    Object? token = freezed,
    Object? avatar = freezed,
  }) {
    return _then(_SignUpResponseModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int?,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      token: token == freezed
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as String,
      avatar: avatar == freezed
          ? _value.avatar
          : avatar // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_SignUpResponseModel implements _SignUpResponseModel {
  _$_SignUpResponseModel(
      {required this.id,
      required this.name,
      required this.email,
      required this.token,
      required this.avatar});

  factory _$_SignUpResponseModel.fromJson(Map<String, dynamic> json) =>
      _$$_SignUpResponseModelFromJson(json);

  @override
  final int? id;
  @override
  final String? name;
  @override
  final String? email;
  @override
  final String token;
  @override
  final String? avatar;

  @override
  String toString() {
    return 'SignUpResponseModel(id: $id, name: $name, email: $email, token: $token, avatar: $avatar)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _SignUpResponseModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name) &&
            const DeepCollectionEquality().equals(other.email, email) &&
            const DeepCollectionEquality().equals(other.token, token) &&
            const DeepCollectionEquality().equals(other.avatar, avatar));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name),
      const DeepCollectionEquality().hash(email),
      const DeepCollectionEquality().hash(token),
      const DeepCollectionEquality().hash(avatar));

  @JsonKey(ignore: true)
  @override
  _$SignUpResponseModelCopyWith<_SignUpResponseModel> get copyWith =>
      __$SignUpResponseModelCopyWithImpl<_SignUpResponseModel>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_SignUpResponseModelToJson(this);
  }
}

abstract class _SignUpResponseModel implements SignUpResponseModel {
  factory _SignUpResponseModel(
      {required int? id,
      required String? name,
      required String? email,
      required String token,
      required String? avatar}) = _$_SignUpResponseModel;

  factory _SignUpResponseModel.fromJson(Map<String, dynamic> json) =
      _$_SignUpResponseModel.fromJson;

  @override
  int? get id;
  @override
  String? get name;
  @override
  String? get email;
  @override
  String get token;
  @override
  String? get avatar;
  @override
  @JsonKey(ignore: true)
  _$SignUpResponseModelCopyWith<_SignUpResponseModel> get copyWith =>
      throw _privateConstructorUsedError;
}
