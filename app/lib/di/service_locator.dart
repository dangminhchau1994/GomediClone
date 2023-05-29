import 'package:dio/dio.dart';
import 'package:get_it/get_it.dart';
import '../infrastructure/data/network/api/user_api.dart';
import '../infrastructure/data/network/dio/dio_client.dart';
import '../infrastructure/data/repositories/user_repository.dart';

final getIt = GetIt.instance;

Future<void> setup() async {
  getIt.registerSingleton(Dio());

  getIt.registerSingleton(DioClient(getIt<Dio>()));

  getIt.registerSingleton(UserApi(dioClient: getIt<DioClient>()));

  getIt.registerSingleton(UserRepository(userApi: getIt.get<UserApi>()));
}
