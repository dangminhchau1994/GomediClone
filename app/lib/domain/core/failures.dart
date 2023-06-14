import 'package:freezed_annotation/freezed_annotation.dart';
part 'failures.freezed.dart';

@freezed
class AuthFailure with _$AuthFailure {
  const factory AuthFailure.cancelledByUser() = CancelledByUser;

  const factory AuthFailure.serverError(String errorMessage) = ServerError;

  const factory AuthFailure.emailAlreadyTaken() = EmailAlreadyTaken;

  const factory AuthFailure.invalidEmailAndPassword() = InvalidEmailAndPassword;
}

@freezed
class DrugFailure with _$DrugFailure {
  const factory DrugFailure.serverError(String errMessage) = DrugServerError;
}

@freezed
class FormFailure with _$FormFailure {
  const factory FormFailure.invalidEmail() = InvalidEmail;

  const factory FormFailure.invalidPassword() = InvalidPassword;

  const factory FormFailure.mismatchedPassword() = MismatchedPassword;

  const factory FormFailure.notEnoughThreeCharactersSearchDrug() =
      NotEnoughThreeCharactersSearchDrug;
}
