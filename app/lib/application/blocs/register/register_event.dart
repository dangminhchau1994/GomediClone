import 'package:freezed_annotation/freezed_annotation.dart';

part 'register_event.freezed.dart';

@freezed
class RegisterEvent with _$RegisterEvent {
  const factory RegisterEvent.inputFirstName(String firstName) = InputFirstName;

  const factory RegisterEvent.inputPassword(String password) = InputPassword;

  const factory RegisterEvent.inputEmail(String email) = InputEmail;

  const factory RegisterEvent.inputLogin(String login) = InputLogin;

  const factory RegisterEvent.inputLanguageId(int languageId) = InputLanguageId;

  const factory RegisterEvent.submitRegister() = SubmitRegister;
}
