import 'package:app/application/utils/validation_utlls.dart';
import 'package:app/domain/core/failures.dart';
import 'package:dartz/dartz.dart';

Either<FormFailure, Unit> invalidEmail(String input) {
  if (ValidationUtils.isEmailValid(input)) {
    return right(unit);
  } else {
    return left(const FormFailure.invalidEmail());
  }
}

Either<FormFailure, Unit> invalidPassword(String input) {
  if (ValidationUtils.isPasswordValid(input)) {
    return right(unit);
  } else {
    return left(const FormFailure.invalidPassword());
  }
}

Either<FormFailure, Unit> mismatchedPassword(
  String firstInput,
  String secondInput,
) {
  if (firstInput == secondInput) {
    return right(unit);
  } else {
    return left(const FormFailure.mismatchedPassword());
  }
}
