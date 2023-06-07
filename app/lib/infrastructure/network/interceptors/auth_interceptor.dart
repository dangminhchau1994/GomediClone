// import 'package:app/application/prefs/flutter_local_storage.dart';
// import 'package:dio/dio.dart';

// class AuthInterceptor extends Interceptor {
//   final Dio dio;

//   AuthInterceptor(this.dio);

//   @override
//   void onRequest(
//     RequestOptions options,
//     RequestInterceptorHandler handler,
//   ) async {
//     final accessToken = await FlutterLocalStorage.getToken();
//     options.headers['Authorization'] = 'Bearer $accessToken';
//     return handler.next(options);
//   }
// }
