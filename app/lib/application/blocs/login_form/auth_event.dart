import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_event.freezed.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.inputEmail(String email) = InputEmail;

  const factory AuthEvent.inputPassword(String password) = InputPassword;

  const factory AuthEvent.submitLogin() = SubmitLogin;
}
