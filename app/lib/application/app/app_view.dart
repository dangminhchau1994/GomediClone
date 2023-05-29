import 'package:app/application/config/app_config.dart';
import 'package:flutter/material.dart';

class App extends StatelessWidget {
  const App({
    super.key,
    this.appConfig,
  });

  final AppConfig? appConfig;

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
                appConfig?.appName ?? '',
              ),
              Text(
                appConfig?.baseUrl ?? '',
              )
            ],
          ),
        ),
      ),
    );
  }
}
