import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/core/failures.dart';
import 'package:app/infrastructure/models/token/token.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
part 'auth_state.freezed.dart';

@freezed
class AuthState with _$AuthState {
  const factory AuthState({
    BaseStatus? status,
    AuthStatus? authStatus,
    String? email,
    String? password,
    AuthFailure? failure,
    Token? token,
  }) = _AuthState;
}

@freezed
class AuthStatus with _$AuthStatus {
  const factory AuthStatus.authenticated() = Authenticated;

  const factory AuthStatus.unauthenticated() = UnAuthenticated;

  const factory AuthStatus.unonboarding() = UnOnboarding;
}
