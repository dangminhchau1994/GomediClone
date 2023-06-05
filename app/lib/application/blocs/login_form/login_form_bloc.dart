import 'package:app/application/blocs/login_form/login_form_event.dart';
import 'package:app/application/blocs/login_form/login_form_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/application/prefs/share_preferences.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginFormBloc extends Bloc<LoginFormEvent, LoginFormState> {
  final IAuthenticateRepository repository;

  LoginFormBloc(this.repository)
      : super(
          const LoginFormState(
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
    Emitter<LoginFormState> emit,
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
