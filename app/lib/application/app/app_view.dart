import 'package:app/application/config/app_config.dart';
import 'package:app/di/service_locator.dart';
import 'package:app/infrastructure/repositories/authenticate_respository_impl.dart';
import 'package:flutter/material.dart';

class App extends StatefulWidget {
  const App({
    super.key,
    this.appConfig,
  });

  final AppConfig? appConfig;

  @override
  State<App> createState() => _AppState();
}

class _AppState extends State<App> {
  Future<void> authenticated() async {
    final result = await getIt<AuthenticateRepositoryImpl>().authenticate(
      'dangminhchau0105@gmail.com',
      'Chau1994@',
    );

    result.fold(
      (l) => null,
      (r) => debugPrint('data: ${r.idToken}'),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(),
        body: Center(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                widget.appConfig?.appName ?? '',
              ),
              Text(
                widget.appConfig?.baseUrl ?? '',
              ),
              ElevatedButton(
                onPressed: () async => authenticated(),
                child: const Text('Authenticated'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
