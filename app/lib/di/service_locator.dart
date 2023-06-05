import 'package:app/infrastructure/repositories/authenticate_respository_impl.dart';
import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../domain/token/i_authenticate_repository.dart';
import '../infrastructure/network/api/authenticate_api.dart';
import '../infrastructure/network/dio/dio_client.dart';

final getIt = GetIt.instance;

Future<void> setupLocator(String url) async {
  getIt.registerSingleton(
    Dio(),
  );

  getIt.registerSingleton(
    DioClient(getIt<Dio>(), url),
  );

  getIt.registerSingleton(
    AuthenticateApi(
      dioClient: getIt<DioClient>(),
    ),
  );

  getIt.registerLazySingleton<IAuthenticateRepository>(() =>
      AuthenticateRepositoryImpl(authenticateApi: getIt<AuthenticateApi>()));
}
