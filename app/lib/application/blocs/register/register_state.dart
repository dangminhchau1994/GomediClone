import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/core/failures.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../infrastructure/models/register/register.dart';

part 'register_state.freezed.dart';

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState({
    BaseStatus? status,
    String? firstName,
    String? password,
    String? email,
    String? login,
    int? languageId,
    Register? register,
    AuthFailure? authFailure,
  }) = _RegisterState;
}
