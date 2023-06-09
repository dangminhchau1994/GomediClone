// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) inputEmail,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitLogin,
    required TResult Function() checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? inputEmail,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitLogin,
    TResult? Function()? checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? inputEmail,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitLogin,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(CheckStatus value) checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(CheckStatus value)? checkStatus,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthEventCopyWith<$Res> {
  factory $AuthEventCopyWith(AuthEvent value, $Res Function(AuthEvent) then) =
      _$AuthEventCopyWithImpl<$Res, AuthEvent>;
}

/// @nodoc
class _$AuthEventCopyWithImpl<$Res, $Val extends AuthEvent>
    implements $AuthEventCopyWith<$Res> {
  _$AuthEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InputEmailCopyWith<$Res> {
  factory _$$InputEmailCopyWith(
          _$InputEmail value, $Res Function(_$InputEmail) then) =
      __$$InputEmailCopyWithImpl<$Res>;
  @useResult
  $Res call({String email});
}

/// @nodoc
class __$$InputEmailCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InputEmail>
    implements _$$InputEmailCopyWith<$Res> {
  __$$InputEmailCopyWithImpl(
      _$InputEmail _value, $Res Function(_$InputEmail) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? email = null,
  }) {
    return _then(_$InputEmail(
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputEmail implements InputEmail {
  const _$InputEmail(this.email);

  @override
  final String email;

  @override
  String toString() {
    return 'AuthEvent.inputEmail(email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputEmail &&
            (identical(other.email, email) || other.email == email));
  }

  @override
  int get hashCode => Object.hash(runtimeType, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputEmailCopyWith<_$InputEmail> get copyWith =>
      __$$InputEmailCopyWithImpl<_$InputEmail>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) inputEmail,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitLogin,
    required TResult Function() checkStatus,
  }) {
    return inputEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? inputEmail,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitLogin,
    TResult? Function()? checkStatus,
  }) {
    return inputEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? inputEmail,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitLogin,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (inputEmail != null) {
      return inputEmail(email);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(CheckStatus value) checkStatus,
  }) {
    return inputEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(CheckStatus value)? checkStatus,
  }) {
    return inputEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (inputEmail != null) {
      return inputEmail(this);
    }
    return orElse();
  }
}

abstract class InputEmail implements AuthEvent {
  const factory InputEmail(final String email) = _$InputEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$InputEmailCopyWith<_$InputEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputPasswordCopyWith<$Res> {
  factory _$$InputPasswordCopyWith(
          _$InputPassword value, $Res Function(_$InputPassword) then) =
      __$$InputPasswordCopyWithImpl<$Res>;
  @useResult
  $Res call({String password});
}

/// @nodoc
class __$$InputPasswordCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$InputPassword>
    implements _$$InputPasswordCopyWith<$Res> {
  __$$InputPasswordCopyWithImpl(
      _$InputPassword _value, $Res Function(_$InputPassword) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? password = null,
  }) {
    return _then(_$InputPassword(
      null == password
          ? _value.password
          : password // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputPassword implements InputPassword {
  const _$InputPassword(this.password);

  @override
  final String password;

  @override
  String toString() {
    return 'AuthEvent.inputPassword(password: $password)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputPassword &&
            (identical(other.password, password) ||
                other.password == password));
  }

  @override
  int get hashCode => Object.hash(runtimeType, password);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputPasswordCopyWith<_$InputPassword> get copyWith =>
      __$$InputPasswordCopyWithImpl<_$InputPassword>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) inputEmail,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitLogin,
    required TResult Function() checkStatus,
  }) {
    return inputPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? inputEmail,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitLogin,
    TResult? Function()? checkStatus,
  }) {
    return inputPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? inputEmail,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitLogin,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(password);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(CheckStatus value) checkStatus,
  }) {
    return inputPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(CheckStatus value)? checkStatus,
  }) {
    return inputPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(this);
    }
    return orElse();
  }
}

abstract class InputPassword implements AuthEvent {
  const factory InputPassword(final String password) = _$InputPassword;

  String get password;
  @JsonKey(ignore: true)
  _$$InputPasswordCopyWith<_$InputPassword> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitLoginCopyWith<$Res> {
  factory _$$SubmitLoginCopyWith(
          _$SubmitLogin value, $Res Function(_$SubmitLogin) then) =
      __$$SubmitLoginCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitLoginCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$SubmitLogin>
    implements _$$SubmitLoginCopyWith<$Res> {
  __$$SubmitLoginCopyWithImpl(
      _$SubmitLogin _value, $Res Function(_$SubmitLogin) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitLogin implements SubmitLogin {
  const _$SubmitLogin();

  @override
  String toString() {
    return 'AuthEvent.submitLogin()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitLogin);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) inputEmail,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitLogin,
    required TResult Function() checkStatus,
  }) {
    return submitLogin();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? inputEmail,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitLogin,
    TResult? Function()? checkStatus,
  }) {
    return submitLogin?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? inputEmail,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitLogin,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (submitLogin != null) {
      return submitLogin();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(CheckStatus value) checkStatus,
  }) {
    return submitLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(CheckStatus value)? checkStatus,
  }) {
    return submitLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (submitLogin != null) {
      return submitLogin(this);
    }
    return orElse();
  }
}

abstract class SubmitLogin implements AuthEvent {
  const factory SubmitLogin() = _$SubmitLogin;
}

/// @nodoc
abstract class _$$CheckStatusCopyWith<$Res> {
  factory _$$CheckStatusCopyWith(
          _$CheckStatus value, $Res Function(_$CheckStatus) then) =
      __$$CheckStatusCopyWithImpl<$Res>;
}

/// @nodoc
class __$$CheckStatusCopyWithImpl<$Res>
    extends _$AuthEventCopyWithImpl<$Res, _$CheckStatus>
    implements _$$CheckStatusCopyWith<$Res> {
  __$$CheckStatusCopyWithImpl(
      _$CheckStatus _value, $Res Function(_$CheckStatus) _then)
      : super(_value, _then);
}

/// @nodoc

class _$CheckStatus implements CheckStatus {
  const _$CheckStatus();

  @override
  String toString() {
    return 'AuthEvent.checkStatus()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$CheckStatus);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String email) inputEmail,
    required TResult Function(String password) inputPassword,
    required TResult Function() submitLogin,
    required TResult Function() checkStatus,
  }) {
    return checkStatus();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String email)? inputEmail,
    TResult? Function(String password)? inputPassword,
    TResult? Function()? submitLogin,
    TResult? Function()? checkStatus,
  }) {
    return checkStatus?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String email)? inputEmail,
    TResult Function(String password)? inputPassword,
    TResult Function()? submitLogin,
    TResult Function()? checkStatus,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(SubmitLogin value) submitLogin,
    required TResult Function(CheckStatus value) checkStatus,
  }) {
    return checkStatus(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(SubmitLogin value)? submitLogin,
    TResult? Function(CheckStatus value)? checkStatus,
  }) {
    return checkStatus?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(SubmitLogin value)? submitLogin,
    TResult Function(CheckStatus value)? checkStatus,
    required TResult orElse(),
  }) {
    if (checkStatus != null) {
      return checkStatus(this);
    }
    return orElse();
  }
}

abstract class CheckStatus implements AuthEvent {
  const factory CheckStatus() = _$CheckStatus;
}
