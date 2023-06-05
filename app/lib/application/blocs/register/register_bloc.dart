import 'package:app/application/blocs/register/register_event.dart';
import 'package:app/application/blocs/register/register_state.dart';
import 'package:app/application/blocs/status/base_status.dart';
import 'package:app/domain/token/i_authenticate_repository.dart';
import 'package:app/infrastructure/models/register/register.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class RegisterBloc extends Bloc<RegisterEvent, RegisterState> {
  RegisterBloc(this.authenticateRepository)
      : super(
          const RegisterState(
            status: BaseStatus.initial(),
          ),
        ) {
    on<SubmitRegister>(
      _register,
    );

    on<InputFirstName>(
      (event, emit) => emit(
        state.copyWith(
          firstName: event.firstName,
        ),
      ),
    );

    on<InputPassword>((event, emit) {
      emit(
        state.copyWith(
          password: event.password,
        ),
      );
    });

    on<InputEmail>(
      (event, emit) => emit(
        state.copyWith(
          email: event.email,
        ),
      ),
    );

    on<InputLogin>(
      (event, emit) => emit(
        state.copyWith(
          login: event.login,
        ),
      ),
    );

    on<InputLanguageId>(
      (event, emit) => emit(
        state.copyWith(
          languageId: event.languageId,
        ),
      ),
    );
  }

  final IAuthenticateRepository authenticateRepository;

  Future<void> _register(
    SubmitRegister event,
    Emitter<RegisterState> emit,
  ) async {
    emit(state.copyWith(status: const BaseStatus.loading()));

    final request = Register(
      firstName: state.firstName,
      password: state.password,
      email: state.email,
      login: state.email,
      languageId: state.languageId ?? 0,
    );

    final result = await authenticateRepository.register(request);

    result.fold(
      (failure) {
        emit(
          state.copyWith(
            status: const BaseStatus.failure(),
            authFailure: failure,
          ),
        );
        emit(
          state.copyWith(
            status: const BaseStatus.initial(),
          ),
        );
      },
      (success) {
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
