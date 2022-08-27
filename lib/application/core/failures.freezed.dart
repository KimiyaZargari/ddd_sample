// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target

part of 'failures.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more informations: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
class _$NetworkFailureTearOff {
  const _$NetworkFailureTearOff();

  UnauthenticatedUser unauthenticatedUser(String? message) {
    return UnauthenticatedUser(
      message,
    );
  }

  ServerError serverError(String? message) {
    return ServerError(
      message,
    );
  }

  UnverifiedUser unverifiedUser(
      {required String? message,
      required UserType? userType,
      required String? email}) {
    return UnverifiedUser(
      message: message,
      userType: userType,
      email: email,
    );
  }

  NotFound notFound(String? message) {
    return NotFound(
      message,
    );
  }

  BadRequest badRequest(String? message) {
    return BadRequest(
      message,
    );
  }

  UnprocessableEntity unprocessableEntity(String? message) {
    return UnprocessableEntity(
      message,
    );
  }
}

/// @nodoc
const $NetworkFailure = _$NetworkFailureTearOff();

/// @nodoc
mixin _$NetworkFailure {
  String? get message => throw _privateConstructorUsedError;

  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $NetworkFailureCopyWith<NetworkFailure> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NetworkFailureCopyWith<$Res> {
  factory $NetworkFailureCopyWith(
          NetworkFailure value, $Res Function(NetworkFailure) then) =
      _$NetworkFailureCopyWithImpl<$Res>;
  $Res call({String? message});
}

/// @nodoc
class _$NetworkFailureCopyWithImpl<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  _$NetworkFailureCopyWithImpl(this._value, this._then);

  final NetworkFailure _value;
  // ignore: unused_field
  final $Res Function(NetworkFailure) _then;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(_value.copyWith(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc
abstract class $UnauthenticatedUserCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory $UnauthenticatedUserCopyWith(
          UnauthenticatedUser value, $Res Function(UnauthenticatedUser) then) =
      _$UnauthenticatedUserCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$UnauthenticatedUserCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements $UnauthenticatedUserCopyWith<$Res> {
  _$UnauthenticatedUserCopyWithImpl(
      UnauthenticatedUser _value, $Res Function(UnauthenticatedUser) _then)
      : super(_value, (v) => _then(v as UnauthenticatedUser));

  @override
  UnauthenticatedUser get _value => super._value as UnauthenticatedUser;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnauthenticatedUser(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnauthenticatedUser implements UnauthenticatedUser {
  const _$UnauthenticatedUser(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.unauthenticatedUser(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnauthenticatedUser &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UnauthenticatedUserCopyWith<UnauthenticatedUser> get copyWith =>
      _$UnauthenticatedUserCopyWithImpl<UnauthenticatedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) {
    return unauthenticatedUser(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) {
    return unauthenticatedUser?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (unauthenticatedUser != null) {
      return unauthenticatedUser(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) {
    return unauthenticatedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) {
    return unauthenticatedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (unauthenticatedUser != null) {
      return unauthenticatedUser(this);
    }
    return orElse();
  }
}

abstract class UnauthenticatedUser implements NetworkFailure {
  const factory UnauthenticatedUser(String? message) = _$UnauthenticatedUser;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $UnauthenticatedUserCopyWith<UnauthenticatedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $ServerErrorCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory $ServerErrorCopyWith(
          ServerError value, $Res Function(ServerError) then) =
      _$ServerErrorCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$ServerErrorCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res>
    implements $ServerErrorCopyWith<$Res> {
  _$ServerErrorCopyWithImpl(
      ServerError _value, $Res Function(ServerError) _then)
      : super(_value, (v) => _then(v as ServerError));

  @override
  ServerError get _value => super._value as ServerError;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(ServerError(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$ServerError implements ServerError {
  const _$ServerError(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.serverError(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is ServerError &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $ServerErrorCopyWith<ServerError> get copyWith =>
      _$ServerErrorCopyWithImpl<ServerError>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) {
    return serverError(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) {
    return serverError?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) {
    return serverError(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) {
    return serverError?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (serverError != null) {
      return serverError(this);
    }
    return orElse();
  }
}

abstract class ServerError implements NetworkFailure {
  const factory ServerError(String? message) = _$ServerError;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $ServerErrorCopyWith<ServerError> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnverifiedUserCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory $UnverifiedUserCopyWith(
          UnverifiedUser value, $Res Function(UnverifiedUser) then) =
      _$UnverifiedUserCopyWithImpl<$Res>;
  @override
  $Res call({String? message, UserType? userType, String? email});
}

/// @nodoc
class _$UnverifiedUserCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements $UnverifiedUserCopyWith<$Res> {
  _$UnverifiedUserCopyWithImpl(
      UnverifiedUser _value, $Res Function(UnverifiedUser) _then)
      : super(_value, (v) => _then(v as UnverifiedUser));

  @override
  UnverifiedUser get _value => super._value as UnverifiedUser;

  @override
  $Res call({
    Object? message = freezed,
    Object? userType = freezed,
    Object? email = freezed,
  }) {
    return _then(UnverifiedUser(
      message: message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
      userType: userType == freezed
          ? _value.userType
          : userType // ignore: cast_nullable_to_non_nullable
              as UserType?,
      email: email == freezed
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnverifiedUser implements UnverifiedUser {
  const _$UnverifiedUser(
      {required this.message, required this.userType, required this.email});

  @override
  final String? message;
  @override
  final UserType? userType;
  @override
  final String? email;

  @override
  String toString() {
    return 'NetworkFailure.unverifiedUser(message: $message, userType: $userType, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnverifiedUser &&
            const DeepCollectionEquality().equals(other.message, message) &&
            const DeepCollectionEquality().equals(other.userType, userType) &&
            const DeepCollectionEquality().equals(other.email, email));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType,
      const DeepCollectionEquality().hash(message),
      const DeepCollectionEquality().hash(userType),
      const DeepCollectionEquality().hash(email));

  @JsonKey(ignore: true)
  @override
  $UnverifiedUserCopyWith<UnverifiedUser> get copyWith =>
      _$UnverifiedUserCopyWithImpl<UnverifiedUser>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) {
    return unverifiedUser(message, userType, email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) {
    return unverifiedUser?.call(message, userType, email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (unverifiedUser != null) {
      return unverifiedUser(message, userType, email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) {
    return unverifiedUser(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) {
    return unverifiedUser?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (unverifiedUser != null) {
      return unverifiedUser(this);
    }
    return orElse();
  }
}

abstract class UnverifiedUser implements NetworkFailure {
  const factory UnverifiedUser(
      {required String? message,
      required UserType? userType,
      required String? email}) = _$UnverifiedUser;

  @override
  String? get message;
  UserType? get userType;
  String? get email;
  @override
  @JsonKey(ignore: true)
  $UnverifiedUserCopyWith<UnverifiedUser> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NotFoundCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory $NotFoundCopyWith(NotFound value, $Res Function(NotFound) then) =
      _$NotFoundCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$NotFoundCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res>
    implements $NotFoundCopyWith<$Res> {
  _$NotFoundCopyWithImpl(NotFound _value, $Res Function(NotFound) _then)
      : super(_value, (v) => _then(v as NotFound));

  @override
  NotFound get _value => super._value as NotFound;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(NotFound(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$NotFound implements NotFound {
  const _$NotFound(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.notFound(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is NotFound &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $NotFoundCopyWith<NotFound> get copyWith =>
      _$NotFoundCopyWithImpl<NotFound>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) {
    return notFound(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) {
    return notFound?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) {
    return notFound(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) {
    return notFound?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (notFound != null) {
      return notFound(this);
    }
    return orElse();
  }
}

abstract class NotFound implements NetworkFailure {
  const factory NotFound(String? message) = _$NotFound;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $NotFoundCopyWith<NotFound> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $BadRequestCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory $BadRequestCopyWith(
          BadRequest value, $Res Function(BadRequest) then) =
      _$BadRequestCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$BadRequestCopyWithImpl<$Res> extends _$NetworkFailureCopyWithImpl<$Res>
    implements $BadRequestCopyWith<$Res> {
  _$BadRequestCopyWithImpl(BadRequest _value, $Res Function(BadRequest) _then)
      : super(_value, (v) => _then(v as BadRequest));

  @override
  BadRequest get _value => super._value as BadRequest;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(BadRequest(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$BadRequest implements BadRequest {
  const _$BadRequest(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.badRequest(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is BadRequest &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $BadRequestCopyWith<BadRequest> get copyWith =>
      _$BadRequestCopyWithImpl<BadRequest>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) {
    return badRequest(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) {
    return badRequest?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) {
    return badRequest(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) {
    return badRequest?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (badRequest != null) {
      return badRequest(this);
    }
    return orElse();
  }
}

abstract class BadRequest implements NetworkFailure {
  const factory BadRequest(String? message) = _$BadRequest;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $BadRequestCopyWith<BadRequest> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UnprocessableEntityCopyWith<$Res>
    implements $NetworkFailureCopyWith<$Res> {
  factory $UnprocessableEntityCopyWith(
          UnprocessableEntity value, $Res Function(UnprocessableEntity) then) =
      _$UnprocessableEntityCopyWithImpl<$Res>;
  @override
  $Res call({String? message});
}

/// @nodoc
class _$UnprocessableEntityCopyWithImpl<$Res>
    extends _$NetworkFailureCopyWithImpl<$Res>
    implements $UnprocessableEntityCopyWith<$Res> {
  _$UnprocessableEntityCopyWithImpl(
      UnprocessableEntity _value, $Res Function(UnprocessableEntity) _then)
      : super(_value, (v) => _then(v as UnprocessableEntity));

  @override
  UnprocessableEntity get _value => super._value as UnprocessableEntity;

  @override
  $Res call({
    Object? message = freezed,
  }) {
    return _then(UnprocessableEntity(
      message == freezed
          ? _value.message
          : message // ignore: cast_nullable_to_non_nullable
              as String?,
    ));
  }
}

/// @nodoc

class _$UnprocessableEntity implements UnprocessableEntity {
  const _$UnprocessableEntity(this.message);

  @override
  final String? message;

  @override
  String toString() {
    return 'NetworkFailure.unprocessableEntity(message: $message)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is UnprocessableEntity &&
            const DeepCollectionEquality().equals(other.message, message));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, const DeepCollectionEquality().hash(message));

  @JsonKey(ignore: true)
  @override
  $UnprocessableEntityCopyWith<UnprocessableEntity> get copyWith =>
      _$UnprocessableEntityCopyWithImpl<UnprocessableEntity>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String? message) unauthenticatedUser,
    required TResult Function(String? message) serverError,
    required TResult Function(
            String? message, UserType? userType, String? email)
        unverifiedUser,
    required TResult Function(String? message) notFound,
    required TResult Function(String? message) badRequest,
    required TResult Function(String? message) unprocessableEntity,
  }) {
    return unprocessableEntity(message);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
  }) {
    return unprocessableEntity?.call(message);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String? message)? unauthenticatedUser,
    TResult Function(String? message)? serverError,
    TResult Function(String? message, UserType? userType, String? email)?
        unverifiedUser,
    TResult Function(String? message)? notFound,
    TResult Function(String? message)? badRequest,
    TResult Function(String? message)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(message);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(UnauthenticatedUser value) unauthenticatedUser,
    required TResult Function(ServerError value) serverError,
    required TResult Function(UnverifiedUser value) unverifiedUser,
    required TResult Function(NotFound value) notFound,
    required TResult Function(BadRequest value) badRequest,
    required TResult Function(UnprocessableEntity value) unprocessableEntity,
  }) {
    return unprocessableEntity(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
  }) {
    return unprocessableEntity?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(UnauthenticatedUser value)? unauthenticatedUser,
    TResult Function(ServerError value)? serverError,
    TResult Function(UnverifiedUser value)? unverifiedUser,
    TResult Function(NotFound value)? notFound,
    TResult Function(BadRequest value)? badRequest,
    TResult Function(UnprocessableEntity value)? unprocessableEntity,
    required TResult orElse(),
  }) {
    if (unprocessableEntity != null) {
      return unprocessableEntity(this);
    }
    return orElse();
  }
}

abstract class UnprocessableEntity implements NetworkFailure {
  const factory UnprocessableEntity(String? message) = _$UnprocessableEntity;

  @override
  String? get message;
  @override
  @JsonKey(ignore: true)
  $UnprocessableEntityCopyWith<UnprocessableEntity> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
class _$StorageFailureTearOff {
  const _$StorageFailureTearOff();

  CouldNotStore couldNotStore() {
    return const CouldNotStore();
  }

  CouldNotFetchData couldNotFetchData() {
    return const CouldNotFetchData();
  }
}

/// @nodoc
const $StorageFailure = _$StorageFailureTearOff();

/// @nodoc
mixin _$StorageFailure {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() couldNotStore,
    required TResult Function() couldNotFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? couldNotStore,
    TResult Function()? couldNotFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? couldNotStore,
    TResult Function()? couldNotFetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CouldNotStore value) couldNotStore,
    required TResult Function(CouldNotFetchData value) couldNotFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CouldNotStore value)? couldNotStore,
    TResult Function(CouldNotFetchData value)? couldNotFetchData,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CouldNotStore value)? couldNotStore,
    TResult Function(CouldNotFetchData value)? couldNotFetchData,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $StorageFailureCopyWith<$Res> {
  factory $StorageFailureCopyWith(
          StorageFailure value, $Res Function(StorageFailure) then) =
      _$StorageFailureCopyWithImpl<$Res>;
}

/// @nodoc
class _$StorageFailureCopyWithImpl<$Res>
    implements $StorageFailureCopyWith<$Res> {
  _$StorageFailureCopyWithImpl(this._value, this._then);

  final StorageFailure _value;
  // ignore: unused_field
  final $Res Function(StorageFailure) _then;
}

/// @nodoc
abstract class $CouldNotStoreCopyWith<$Res> {
  factory $CouldNotStoreCopyWith(
          CouldNotStore value, $Res Function(CouldNotStore) then) =
      _$CouldNotStoreCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouldNotStoreCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res>
    implements $CouldNotStoreCopyWith<$Res> {
  _$CouldNotStoreCopyWithImpl(
      CouldNotStore _value, $Res Function(CouldNotStore) _then)
      : super(_value, (v) => _then(v as CouldNotStore));

  @override
  CouldNotStore get _value => super._value as CouldNotStore;
}

/// @nodoc

class _$CouldNotStore implements CouldNotStore {
  const _$CouldNotStore();

  @override
  String toString() {
    return 'StorageFailure.couldNotStore()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CouldNotStore);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() couldNotStore,
    required TResult Function() couldNotFetchData,
  }) {
    return couldNotStore();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? couldNotStore,
    TResult Function()? couldNotFetchData,
  }) {
    return couldNotStore?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? couldNotStore,
    TResult Function()? couldNotFetchData,
    required TResult orElse(),
  }) {
    if (couldNotStore != null) {
      return couldNotStore();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CouldNotStore value) couldNotStore,
    required TResult Function(CouldNotFetchData value) couldNotFetchData,
  }) {
    return couldNotStore(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CouldNotStore value)? couldNotStore,
    TResult Function(CouldNotFetchData value)? couldNotFetchData,
  }) {
    return couldNotStore?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CouldNotStore value)? couldNotStore,
    TResult Function(CouldNotFetchData value)? couldNotFetchData,
    required TResult orElse(),
  }) {
    if (couldNotStore != null) {
      return couldNotStore(this);
    }
    return orElse();
  }
}

abstract class CouldNotStore implements StorageFailure {
  const factory CouldNotStore() = _$CouldNotStore;
}

/// @nodoc
abstract class $CouldNotFetchDataCopyWith<$Res> {
  factory $CouldNotFetchDataCopyWith(
          CouldNotFetchData value, $Res Function(CouldNotFetchData) then) =
      _$CouldNotFetchDataCopyWithImpl<$Res>;
}

/// @nodoc
class _$CouldNotFetchDataCopyWithImpl<$Res>
    extends _$StorageFailureCopyWithImpl<$Res>
    implements $CouldNotFetchDataCopyWith<$Res> {
  _$CouldNotFetchDataCopyWithImpl(
      CouldNotFetchData _value, $Res Function(CouldNotFetchData) _then)
      : super(_value, (v) => _then(v as CouldNotFetchData));

  @override
  CouldNotFetchData get _value => super._value as CouldNotFetchData;
}

/// @nodoc

class _$CouldNotFetchData implements CouldNotFetchData {
  const _$CouldNotFetchData();

  @override
  String toString() {
    return 'StorageFailure.couldNotFetchData()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is CouldNotFetchData);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() couldNotStore,
    required TResult Function() couldNotFetchData,
  }) {
    return couldNotFetchData();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult Function()? couldNotStore,
    TResult Function()? couldNotFetchData,
  }) {
    return couldNotFetchData?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? couldNotStore,
    TResult Function()? couldNotFetchData,
    required TResult orElse(),
  }) {
    if (couldNotFetchData != null) {
      return couldNotFetchData();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(CouldNotStore value) couldNotStore,
    required TResult Function(CouldNotFetchData value) couldNotFetchData,
  }) {
    return couldNotFetchData(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult Function(CouldNotStore value)? couldNotStore,
    TResult Function(CouldNotFetchData value)? couldNotFetchData,
  }) {
    return couldNotFetchData?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(CouldNotStore value)? couldNotStore,
    TResult Function(CouldNotFetchData value)? couldNotFetchData,
    required TResult orElse(),
  }) {
    if (couldNotFetchData != null) {
      return couldNotFetchData(this);
    }
    return orElse();
  }
}

abstract class CouldNotFetchData implements StorageFailure {
  const factory CouldNotFetchData() = _$CouldNotFetchData;
}
