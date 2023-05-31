import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../infrastructure/network/api/authenticate_api.dart';
import '../infrastructure/network/dio/dio_client.dart';
import '../infrastructure/repositories/authenticate_respository_impl.dart';

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

  getIt.registerSingleton(
    AuthenticateRepositoryImpl(
      authenticateApi: getIt.get<AuthenticateApi>(),
    ),
  );
}
