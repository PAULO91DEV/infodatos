import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/app_controller.dart';
import 'package:infodatos/app/app_widget.dart';
import 'package:infodatos/app/modules/home/home_module.dart';
import 'package:infodatos/app/modules/login/login_module.dart';

class AppModule extends MainModule {
  Dio createDio() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
      requestHeader: true,
      requestBody: true,
      responseBody: true,
    ));
    return dio;
  }

  @override
  List<Bind> get binds => [
        Bind((i) => AppController()),
        Bind((i) => createDio()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, module: LoginModule()),
        ModularRouter("/home", module: HomeModule()),
      ];

  @override
  Widget get bootstrap => AppWidget();

  static Inject get to => Inject<AppModule>.of();
}
