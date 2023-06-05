import 'package:freezed_annotation/freezed_annotation.dart';
part 'login_form_event.freezed.dart';

@freezed
class LoginFormEvent with _$LoginFormEvent {
  const factory LoginFormEvent.inputEmail(String email) = InputEmail;

  const factory LoginFormEvent.inputPassword(String password) = InputPassword;

  const factory LoginFormEvent.submitLogin() = SubmitLogin;
}
