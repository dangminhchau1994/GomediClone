// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'register_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$RegisterEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $RegisterEventCopyWith<$Res> {
  factory $RegisterEventCopyWith(
          RegisterEvent value, $Res Function(RegisterEvent) then) =
      _$RegisterEventCopyWithImpl<$Res, RegisterEvent>;
}

/// @nodoc
class _$RegisterEventCopyWithImpl<$Res, $Val extends RegisterEvent>
    implements $RegisterEventCopyWith<$Res> {
  _$RegisterEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$InputFirstNameCopyWith<$Res> {
  factory _$$InputFirstNameCopyWith(
          _$InputFirstName value, $Res Function(_$InputFirstName) then) =
      __$$InputFirstNameCopyWithImpl<$Res>;
  @useResult
  $Res call({String firstName});
}

/// @nodoc
class __$$InputFirstNameCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$InputFirstName>
    implements _$$InputFirstNameCopyWith<$Res> {
  __$$InputFirstNameCopyWithImpl(
      _$InputFirstName _value, $Res Function(_$InputFirstName) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? firstName = null,
  }) {
    return _then(_$InputFirstName(
      null == firstName
          ? _value.firstName
          : firstName // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputFirstName implements InputFirstName {
  const _$InputFirstName(this.firstName);

  @override
  final String firstName;

  @override
  String toString() {
    return 'RegisterEvent.inputFirstName(firstName: $firstName)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputFirstName &&
            (identical(other.firstName, firstName) ||
                other.firstName == firstName));
  }

  @override
  int get hashCode => Object.hash(runtimeType, firstName);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputFirstNameCopyWith<_$InputFirstName> get copyWith =>
      __$$InputFirstNameCopyWithImpl<_$InputFirstName>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) {
    return inputFirstName(firstName);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) {
    return inputFirstName?.call(firstName);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
    required TResult orElse(),
  }) {
    if (inputFirstName != null) {
      return inputFirstName(firstName);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) {
    return inputFirstName(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) {
    return inputFirstName?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) {
    if (inputFirstName != null) {
      return inputFirstName(this);
    }
    return orElse();
  }
}

abstract class InputFirstName implements RegisterEvent {
  const factory InputFirstName(final String firstName) = _$InputFirstName;

  String get firstName;
  @JsonKey(ignore: true)
  _$$InputFirstNameCopyWith<_$InputFirstName> get copyWith =>
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
    extends _$RegisterEventCopyWithImpl<$Res, _$InputPassword>
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
    return 'RegisterEvent.inputPassword(password: $password)';
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
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) {
    return inputPassword(password);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) {
    return inputPassword?.call(password);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
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
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) {
    return inputPassword(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) {
    return inputPassword?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) {
    if (inputPassword != null) {
      return inputPassword(this);
    }
    return orElse();
  }
}

abstract class InputPassword implements RegisterEvent {
  const factory InputPassword(final String password) = _$InputPassword;

  String get password;
  @JsonKey(ignore: true)
  _$$InputPasswordCopyWith<_$InputPassword> get copyWith =>
      throw _privateConstructorUsedError;
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
    extends _$RegisterEventCopyWithImpl<$Res, _$InputEmail>
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
    return 'RegisterEvent.inputEmail(email: $email)';
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
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) {
    return inputEmail(email);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) {
    return inputEmail?.call(email);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
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
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) {
    return inputEmail(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) {
    return inputEmail?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) {
    if (inputEmail != null) {
      return inputEmail(this);
    }
    return orElse();
  }
}

abstract class InputEmail implements RegisterEvent {
  const factory InputEmail(final String email) = _$InputEmail;

  String get email;
  @JsonKey(ignore: true)
  _$$InputEmailCopyWith<_$InputEmail> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputLoginCopyWith<$Res> {
  factory _$$InputLoginCopyWith(
          _$InputLogin value, $Res Function(_$InputLogin) then) =
      __$$InputLoginCopyWithImpl<$Res>;
  @useResult
  $Res call({String login});
}

/// @nodoc
class __$$InputLoginCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$InputLogin>
    implements _$$InputLoginCopyWith<$Res> {
  __$$InputLoginCopyWithImpl(
      _$InputLogin _value, $Res Function(_$InputLogin) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? login = null,
  }) {
    return _then(_$InputLogin(
      null == login
          ? _value.login
          : login // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc

class _$InputLogin implements InputLogin {
  const _$InputLogin(this.login);

  @override
  final String login;

  @override
  String toString() {
    return 'RegisterEvent.inputLogin(login: $login)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputLogin &&
            (identical(other.login, login) || other.login == login));
  }

  @override
  int get hashCode => Object.hash(runtimeType, login);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLoginCopyWith<_$InputLogin> get copyWith =>
      __$$InputLoginCopyWithImpl<_$InputLogin>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) {
    return inputLogin(login);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) {
    return inputLogin?.call(login);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
    required TResult orElse(),
  }) {
    if (inputLogin != null) {
      return inputLogin(login);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) {
    return inputLogin(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) {
    return inputLogin?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) {
    if (inputLogin != null) {
      return inputLogin(this);
    }
    return orElse();
  }
}

abstract class InputLogin implements RegisterEvent {
  const factory InputLogin(final String login) = _$InputLogin;

  String get login;
  @JsonKey(ignore: true)
  _$$InputLoginCopyWith<_$InputLogin> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$InputLanguageIdCopyWith<$Res> {
  factory _$$InputLanguageIdCopyWith(
          _$InputLanguageId value, $Res Function(_$InputLanguageId) then) =
      __$$InputLanguageIdCopyWithImpl<$Res>;
  @useResult
  $Res call({int languageId});
}

/// @nodoc
class __$$InputLanguageIdCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$InputLanguageId>
    implements _$$InputLanguageIdCopyWith<$Res> {
  __$$InputLanguageIdCopyWithImpl(
      _$InputLanguageId _value, $Res Function(_$InputLanguageId) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? languageId = null,
  }) {
    return _then(_$InputLanguageId(
      null == languageId
          ? _value.languageId
          : languageId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc

class _$InputLanguageId implements InputLanguageId {
  const _$InputLanguageId(this.languageId);

  @override
  final int languageId;

  @override
  String toString() {
    return 'RegisterEvent.inputLanguageId(languageId: $languageId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InputLanguageId &&
            (identical(other.languageId, languageId) ||
                other.languageId == languageId));
  }

  @override
  int get hashCode => Object.hash(runtimeType, languageId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$InputLanguageIdCopyWith<_$InputLanguageId> get copyWith =>
      __$$InputLanguageIdCopyWithImpl<_$InputLanguageId>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) {
    return inputLanguageId(languageId);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) {
    return inputLanguageId?.call(languageId);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
    required TResult orElse(),
  }) {
    if (inputLanguageId != null) {
      return inputLanguageId(languageId);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) {
    return inputLanguageId(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) {
    return inputLanguageId?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) {
    if (inputLanguageId != null) {
      return inputLanguageId(this);
    }
    return orElse();
  }
}

abstract class InputLanguageId implements RegisterEvent {
  const factory InputLanguageId(final int languageId) = _$InputLanguageId;

  int get languageId;
  @JsonKey(ignore: true)
  _$$InputLanguageIdCopyWith<_$InputLanguageId> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$SubmitRegisterCopyWith<$Res> {
  factory _$$SubmitRegisterCopyWith(
          _$SubmitRegister value, $Res Function(_$SubmitRegister) then) =
      __$$SubmitRegisterCopyWithImpl<$Res>;
}

/// @nodoc
class __$$SubmitRegisterCopyWithImpl<$Res>
    extends _$RegisterEventCopyWithImpl<$Res, _$SubmitRegister>
    implements _$$SubmitRegisterCopyWith<$Res> {
  __$$SubmitRegisterCopyWithImpl(
      _$SubmitRegister _value, $Res Function(_$SubmitRegister) _then)
      : super(_value, _then);
}

/// @nodoc

class _$SubmitRegister implements SubmitRegister {
  const _$SubmitRegister();

  @override
  String toString() {
    return 'RegisterEvent.submitRegister()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$SubmitRegister);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(String firstName) inputFirstName,
    required TResult Function(String password) inputPassword,
    required TResult Function(String email) inputEmail,
    required TResult Function(String login) inputLogin,
    required TResult Function(int languageId) inputLanguageId,
    required TResult Function() submitRegister,
  }) {
    return submitRegister();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(String firstName)? inputFirstName,
    TResult? Function(String password)? inputPassword,
    TResult? Function(String email)? inputEmail,
    TResult? Function(String login)? inputLogin,
    TResult? Function(int languageId)? inputLanguageId,
    TResult? Function()? submitRegister,
  }) {
    return submitRegister?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(String firstName)? inputFirstName,
    TResult Function(String password)? inputPassword,
    TResult Function(String email)? inputEmail,
    TResult Function(String login)? inputLogin,
    TResult Function(int languageId)? inputLanguageId,
    TResult Function()? submitRegister,
    required TResult orElse(),
  }) {
    if (submitRegister != null) {
      return submitRegister();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(InputFirstName value) inputFirstName,
    required TResult Function(InputPassword value) inputPassword,
    required TResult Function(InputEmail value) inputEmail,
    required TResult Function(InputLogin value) inputLogin,
    required TResult Function(InputLanguageId value) inputLanguageId,
    required TResult Function(SubmitRegister value) submitRegister,
  }) {
    return submitRegister(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(InputFirstName value)? inputFirstName,
    TResult? Function(InputPassword value)? inputPassword,
    TResult? Function(InputEmail value)? inputEmail,
    TResult? Function(InputLogin value)? inputLogin,
    TResult? Function(InputLanguageId value)? inputLanguageId,
    TResult? Function(SubmitRegister value)? submitRegister,
  }) {
    return submitRegister?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(InputFirstName value)? inputFirstName,
    TResult Function(InputPassword value)? inputPassword,
    TResult Function(InputEmail value)? inputEmail,
    TResult Function(InputLogin value)? inputLogin,
    TResult Function(InputLanguageId value)? inputLanguageId,
    TResult Function(SubmitRegister value)? submitRegister,
    required TResult orElse(),
  }) {
    if (submitRegister != null) {
      return submitRegister(this);
    }
    return orElse();
  }
}

abstract class SubmitRegister implements RegisterEvent {
  const factory SubmitRegister() = _$SubmitRegister;
}
