import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/data/datasources/ceaf/remote/ceaf_remote_datasource_impl.dart';
import 'package:infodatos/data/datasources/pep/mock/pep_mock_datasource.dart';
import 'package:infodatos/data/datasources/person/mock/person_mock_datasource_impl.dart';
import 'package:infodatos/data/repositories/ceaf_repository_impl.dart';
import 'package:infodatos/data/repositories/pep_repository_impl.dart';
import 'package:infodatos/data/repositories/person_repository_impl.dart';
import 'package:infodatos/domain/usecases/ceaf/get_ceaf_usecase.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_full_by_document_usecase.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_rel_full_by_document_usecase.dart';
import 'package:infodatos/domain/usecases/person/get_person_by_name_usecase.dart';

import 'home_controller.dart';
import 'home_page.dart';

class HomeModule extends ChildModule {
  Dio _createDio() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
        requestHeader: true, requestBody: true, responseBody: true));
    return dio;
  }

  @override
  List<Bind> get binds => [
        Bind((i) => _createDio()),
        Bind((i) => CeafRepositoryImpl(CeafRemoteDataSourceImpl(i.get<Dio>()))),
        Bind((i) => PersonRepositoryImpl(PersonMockDataSourceImpl())),
        Bind((i) => PepRepositoryImpl(PepMockDataSourceImpl())),
        Bind((i) => GetCeafUseCase(i.get<CeafRepositoryImpl>())),
        Bind((i) => GetPersonByNameUseCase(i.get<PersonRepositoryImpl>())),
        Bind((i) => GetPepFullByDocumentUseCase(i.get<PepRepositoryImpl>())),
        Bind((i) => GetPepRelFullByDocumentUseCase(i.get<PepRepositoryImpl>())),
        Bind((i) => HomeController()),
      ];

  @override
  List<ModularRouter> get routers => [
        ModularRouter(Modular.initialRoute, child: (_, args) => HomePage()),
      ];

  static Inject get to => Inject<HomeModule>.of();
}
