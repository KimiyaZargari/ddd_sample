// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'check_box_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

CheckBoxModel _$CheckBoxModelFromJson(Map<String, dynamic> json) {
  return _CheckBoxModel.fromJson(json);
}

/// @nodoc
class _$CheckBoxModelTearOff {
  const _$CheckBoxModelTearOff();

  _CheckBoxModel call({required int id, required String name}) {
    return _CheckBoxModel(
      id: id,
      name: name,
    );
  }

  CheckBoxModel fromJson(Map<String, Object?> json) {
    return CheckBoxModel.fromJson(json);
  }
}

/// @nodoc
const $CheckBoxModel = _$CheckBoxModelTearOff();

/// @nodoc
mixin _$CheckBoxModel {
  int get id => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $CheckBoxModelCopyWith<CheckBoxModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CheckBoxModelCopyWith<$Res> {
  factory $CheckBoxModelCopyWith(
          CheckBoxModel value, $Res Function(CheckBoxModel) then) =
      _$CheckBoxModelCopyWithImpl<$Res>;
  $Res call({int id, String name});
}

/// @nodoc
class _$CheckBoxModelCopyWithImpl<$Res>
    implements $CheckBoxModelCopyWith<$Res> {
  _$CheckBoxModelCopyWithImpl(this._value, this._then);

  final CheckBoxModel _value;
  // ignore: unused_field
  final $Res Function(CheckBoxModel) _then;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_value.copyWith(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
abstract class _$CheckBoxModelCopyWith<$Res>
    implements $CheckBoxModelCopyWith<$Res> {
  factory _$CheckBoxModelCopyWith(
          _CheckBoxModel value, $Res Function(_CheckBoxModel) then) =
      __$CheckBoxModelCopyWithImpl<$Res>;
  @override
  $Res call({int id, String name});
}

/// @nodoc
class __$CheckBoxModelCopyWithImpl<$Res>
    extends _$CheckBoxModelCopyWithImpl<$Res>
    implements _$CheckBoxModelCopyWith<$Res> {
  __$CheckBoxModelCopyWithImpl(
      _CheckBoxModel _value, $Res Function(_CheckBoxModel) _then)
      : super(_value, (v) => _then(v as _CheckBoxModel));

  @override
  _CheckBoxModel get _value => super._value as _CheckBoxModel;

  @override
  $Res call({
    Object? id = freezed,
    Object? name = freezed,
  }) {
    return _then(_CheckBoxModel(
      id: id == freezed
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      name: name == freezed
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_CheckBoxModel implements _CheckBoxModel {
  _$_CheckBoxModel({required this.id, required this.name});

  factory _$_CheckBoxModel.fromJson(Map<String, dynamic> json) =>
      _$$_CheckBoxModelFromJson(json);

  @override
  final int id;
  @override
  final String name;

  @override
  String toString() {
    return 'CheckBoxModel(id: $id, name: $name)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _CheckBoxModel &&
            const DeepCollectionEquality().equals(other.id, id) &&
            const DeepCollectionEquality().equals(other.name, name));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(id),
      const DeepCollectionEquality().hash(name));

  @JsonKey(ignore: true)
  @override
  _$CheckBoxModelCopyWith<_CheckBoxModel> get copyWith =>
      __$CheckBoxModelCopyWithImpl<_CheckBoxModel>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_CheckBoxModelToJson(this);
  }
}

abstract class _CheckBoxModel implements CheckBoxModel {
  factory _CheckBoxModel({required int id, required String name}) =
      _$_CheckBoxModel;

  factory _CheckBoxModel.fromJson(Map<String, dynamic> json) =
      _$_CheckBoxModel.fromJson;

  @override
  int get id;
  @override
  String get name;
  @override
  @JsonKey(ignore: true)
  _$CheckBoxModelCopyWith<_CheckBoxModel> get copyWith =>
      throw _privateConstructorUsedError;
}
