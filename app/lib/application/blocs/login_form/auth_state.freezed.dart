// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  BaseStatus? get status => throw _privateConstructorUsedError;
  AuthStatus? get authStatus => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String? get password => throw _privateConstructorUsedError;
  AuthFailure? get failure => throw _privateConstructorUsedError;
  Token? get token => throw _privateConstructorUsedError;

  @JsonKey(ignore: true)
  $AuthStateCopyWith<AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
  @useResult
  $Res call(
      {BaseStatus? status,
      AuthStatus? authStatus,
      String? email,
      String? password,
      AuthFailure? failure,
      Token? token});

  $BaseStatusCopyWith<$Res>? get status;
  $AuthStatusCopyWith<$Res>? get authStatus;
  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? authStatus = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? failure = freezed,
    Object? token = freezed,
  }) {
    return _then(_value.copyWith(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
      authStatus: freezed == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $BaseStatusCopyWith<$Res>? get status {
    if (_value.status == null) {
      return null;
    }

    return $BaseStatusCopyWith<$Res>(_value.status!, (value) {
      return _then(_value.copyWith(status: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthStatusCopyWith<$Res>? get authStatus {
    if (_value.authStatus == null) {
      return null;
    }

    return $AuthStatusCopyWith<$Res>(_value.authStatus!, (value) {
      return _then(_value.copyWith(authStatus: value) as $Val);
    });
  }

  @override
  @pragma('vm:prefer-inline')
  $AuthFailureCopyWith<$Res>? get failure {
    if (_value.failure == null) {
      return null;
    }

    return $AuthFailureCopyWith<$Res>(_value.failure!, (value) {
      return _then(_value.copyWith(failure: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$_AuthStateCopyWith<$Res> implements $AuthStateCopyWith<$Res> {
  factory _$$_AuthStateCopyWith(
          _$_AuthState value, $Res Function(_$_AuthState) then) =
      __$$_AuthStateCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {BaseStatus? status,
      AuthStatus? authStatus,
      String? email,
      String? password,
      AuthFailure? failure,
      Token? token});

  @override
  $BaseStatusCopyWith<$Res>? get status;
  @override
  $AuthStatusCopyWith<$Res>? get authStatus;
  @override
  $AuthFailureCopyWith<$Res>? get failure;
}

/// @nodoc
class __$$_AuthStateCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_AuthState>
    implements _$$_AuthStateCopyWith<$Res> {
  __$$_AuthStateCopyWithImpl(
      _$_AuthState _value, $Res Function(_$_AuthState) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = freezed,
    Object? authStatus = freezed,
    Object? email = freezed,
    Object? password = freezed,
    Object? failure = freezed,
    Object? token = freezed,
  }) {
    return _then(_$_AuthState(
      status: freezed == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as BaseStatus?,
      authStatus: freezed == authStatus
          ? _value.authStatus
          : authStatus // ignore: cast_nullable_to_non_nullable
              as AuthStatus?,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      password: freezed == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String?,
      failure: freezed == failure
          ? _value.failure
          : failure // ignore: cast_nullable_to_non_nullable
              as AuthFailure?,
      token: freezed == token
          ? _value.token
          : token // ignore: cast_nullable_to_non_nullable
              as Token?,
    ));
  }
}

/// @nodoc

class _$_AuthState implements _AuthState {
  const _$_AuthState(
      {this.status,
      this.authStatus,
      this.email,
      this.password,
      this.failure,
      this.token});

  @override
  final BaseStatus? status;
  @override
  final AuthStatus? authStatus;
  @override
  final String? email;
  @override
  final String? password;
  @override
  final AuthFailure? failure;
  @override
  final Token? token;

  @override
  String toString() {
    return 'AuthState(status: $status, authStatus: $authStatus, email: $email, password: $password, failure: $failure, token: $token)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_AuthState &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.authStatus, authStatus) ||
                other.authStatus == authStatus) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.password, password) ||
                other.password == password) &&
            (identical(other.failure, failure) || other.failure == failure) &&
            (identical(other.token, token) || other.token == token));
  }

  @override
  int get hashCode => Object.hash(
      runtimeType, status, authStatus, email, password, failure, token);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      __$$_AuthStateCopyWithImpl<_$_AuthState>(this, _$identity);
}

abstract class _AuthState implements AuthState {
  const factory _AuthState(
      {final BaseStatus? status,
      final AuthStatus? authStatus,
      final String? email,
      final String? password,
      final AuthFailure? failure,
      final Token? token}) = _$_AuthState;

  @override
  BaseStatus? get status;
  @override
  AuthStatus? get authStatus;
  @override
  String? get email;
  @override
  String? get password;
  @override
  AuthFailure? get failure;
  @override
  Token? get token;
  @override
  @JsonKey(ignore: true)
  _$$_AuthStateCopyWith<_$_AuthState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
mixin _$AuthStatus {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unonboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unonboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unonboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(UnOnboarding value) unonboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(UnOnboarding value)? unonboarding,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(UnOnboarding value)? unonboarding,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStatusCopyWith<$Res> {
  factory $AuthStatusCopyWith(
          AuthStatus value, $Res Function(AuthStatus) then) =
      _$AuthStatusCopyWithImpl<$Res, AuthStatus>;
}

/// @nodoc
class _$AuthStatusCopyWithImpl<$Res, $Val extends AuthStatus>
    implements $AuthStatusCopyWith<$Res> {
  _$AuthStatusCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$AuthenticatedCopyWith<$Res> {
  factory _$$AuthenticatedCopyWith(
          _$Authenticated value, $Res Function(_$Authenticated) then) =
      __$$AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$Authenticated>
    implements _$$AuthenticatedCopyWith<$Res> {
  __$$AuthenticatedCopyWithImpl(
      _$Authenticated _value, $Res Function(_$Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$Authenticated implements Authenticated {
  const _$Authenticated();

  @override
  String toString() {
    return 'AuthStatus.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unonboarding,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unonboarding,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unonboarding,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(UnOnboarding value) unonboarding,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(UnOnboarding value)? unonboarding,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(UnOnboarding value)? unonboarding,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class Authenticated implements AuthStatus {
  const factory Authenticated() = _$Authenticated;
}

/// @nodoc
abstract class _$$UnAuthenticatedCopyWith<$Res> {
  factory _$$UnAuthenticatedCopyWith(
          _$UnAuthenticated value, $Res Function(_$UnAuthenticated) then) =
      __$$UnAuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnAuthenticatedCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$UnAuthenticated>
    implements _$$UnAuthenticatedCopyWith<$Res> {
  __$$UnAuthenticatedCopyWithImpl(
      _$UnAuthenticated _value, $Res Function(_$UnAuthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnAuthenticated implements UnAuthenticated {
  const _$UnAuthenticated();

  @override
  String toString() {
    return 'AuthStatus.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnAuthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unonboarding,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unonboarding,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unonboarding,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(UnOnboarding value) unonboarding,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(UnOnboarding value)? unonboarding,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(UnOnboarding value)? unonboarding,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class UnAuthenticated implements AuthStatus {
  const factory UnAuthenticated() = _$UnAuthenticated;
}

/// @nodoc
abstract class _$$UnOnboardingCopyWith<$Res> {
  factory _$$UnOnboardingCopyWith(
          _$UnOnboarding value, $Res Function(_$UnOnboarding) then) =
      __$$UnOnboardingCopyWithImpl<$Res>;
}

/// @nodoc
class __$$UnOnboardingCopyWithImpl<$Res>
    extends _$AuthStatusCopyWithImpl<$Res, _$UnOnboarding>
    implements _$$UnOnboardingCopyWith<$Res> {
  __$$UnOnboardingCopyWithImpl(
      _$UnOnboarding _value, $Res Function(_$UnOnboarding) _then)
      : super(_value, _then);
}

/// @nodoc

class _$UnOnboarding implements UnOnboarding {
  const _$UnOnboarding();

  @override
  String toString() {
    return 'AuthStatus.unonboarding()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$UnOnboarding);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() authenticated,
    required TResult Function() unauthenticated,
    required TResult Function() unonboarding,
  }) {
    return unonboarding();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? authenticated,
    TResult? Function()? unauthenticated,
    TResult? Function()? unonboarding,
  }) {
    return unonboarding?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? authenticated,
    TResult Function()? unauthenticated,
    TResult Function()? unonboarding,
    required TResult orElse(),
  }) {
    if (unonboarding != null) {
      return unonboarding();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(Authenticated value) authenticated,
    required TResult Function(UnAuthenticated value) unauthenticated,
    required TResult Function(UnOnboarding value) unonboarding,
  }) {
    return unonboarding(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(Authenticated value)? authenticated,
    TResult? Function(UnAuthenticated value)? unauthenticated,
    TResult? Function(UnOnboarding value)? unonboarding,
  }) {
    return unonboarding?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(Authenticated value)? authenticated,
    TResult Function(UnAuthenticated value)? unauthenticated,
    TResult Function(UnOnboarding value)? unonboarding,
    required TResult orElse(),
  }) {
    if (unonboarding != null) {
      return unonboarding(this);
    }
    return orElse();
  }
}

abstract class UnOnboarding implements AuthStatus {
  const factory UnOnboarding() = _$UnOnboarding;
}
