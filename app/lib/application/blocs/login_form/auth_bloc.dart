import 'package:app/application/blocs/login_form/auth_event.dart';
import 'package:app/application/blocs/login_form/auth_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/utils/share_preferences.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthBloc extends Bloc<AuthEvent, AuthState> {
  final IAuthenticateRepository repository;

  AuthBloc(this.repository)
      : super(
          const AuthState(
            status: BaseStatus.initial(),
          ),
        ) {
    on<SubmitLogin>(_login);

    on<InputEmail>(
      (event, emit) => emit(
        state.copyWith(email: event.email),
      ),
    );

    on<InputPassword>(
      (event, emit) => emit(
        state.copyWith(password: event.password),
      ),
    );
  }

  Future<void> _login(
    SubmitLogin event,
    Emitter<AuthState> emit,
  ) async {
    emit(
      state.copyWith(
        status: const BaseStatus.loading(),
      ),
    );

    final result = await repository.authenticate(
      state.email ?? '',
      state.password ?? '',
    );

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            failure: failure,
            status: const BaseStatus.failure(),
          ),
        );
        emit(
          state.copyWith(
            status: const BaseStatus.initial(),
          ),
        );
      },
      (data) {
        SharePref().setToken(data.idToken ?? '');
        emit(
          state.copyWith(
            status: const BaseStatus.success(),
          ),
        );
        emit(
          state.copyWith(
            status: const BaseStatus.initial(),
          ),
        );
      },
    );
  }
}
