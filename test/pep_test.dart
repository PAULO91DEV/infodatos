import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infodatos/app/app_module.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/data/datasources/oauth/oauth_datasource.dart';
import 'package:infodatos/data/datasources/oauth/remote/oauth_remote_datasource_impl.dart';
import 'package:infodatos/data/datasources/pep/pep_datasource.dart';
import 'package:infodatos/data/datasources/pep/remote/pep_remote_dataSource.dart';
import 'package:infodatos/data/repositories/oauth_repository_impl.dart';
import 'package:infodatos/data/repositories/pep_repository_impl.dart';
import 'package:infodatos/domain/repositories/pep_repository.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_full_by_document_usecase.dart';

void main() {
  Dio dio;
  String username;
  String password;
  OAuthDataSource oauthDataSource;
  //PepDataSource pepMockDataSource;
  PepDataSource pepRemoteDataSource;

  initModule(AppModule());

  Dio _createDio() {
    Dio dio = Dio();
    // dio.interceptors.add(LogInterceptor(
    //   requestHeader: true,
    //   requestBody: true,
    //   responseBody: true,
    // ));
    return dio;
  }

  setUp(() {
    username = "Demo";
    password = "demo";
    dio = _createDio();
    //pepMockDataSource = PepMockDataSourceImpl();
    pepRemoteDataSource = PepRemoteDataSource(dio);
    oauthDataSource = OAuthRemoteDataSourceImpl(dio);
  });

  group('Pep', () {
    test("Initialize Test", () {
      expect(dio != null, true);
      expect(username != null && username.isNotEmpty, true);
      expect(password != null && password.isNotEmpty, true);
      //expect(pepMockDataSource, isInstanceOf<PepMockDataSourceImpl>());
      expect(pepRemoteDataSource, isInstanceOf<PepRemoteDataSource>());
    });
    test("Procurar por doc", () async {
      var repository = OAuthRepositoryImpl(oauthDataSource);
      var oauthEntity = await repository.authentication(username, password);
      var document = "45317828791";
      PepRepository pepRepository = PepRepositoryImpl(pepRemoteDataSource);
      GetPepFullByDocumentUseCase getPepUseCase =
          GetPepFullByDocumentUseCase(pepRepository);
      var result = await getPepUseCase.call(
        GetPepFullByDocumentUseCaseParams(
          token: oauthEntity.accessToken,
          document: document,
        ),
      );
      expect(result != null && result.identityDocument == document, true);
    });
    test("Procurar por DOC errado", () async {
      var document = "99997828791";
      PepRepository pepRepository = PepRepositoryImpl(pepRemoteDataSource);
      GetPepFullByDocumentUseCase getPepUseCase =
          GetPepFullByDocumentUseCase(pepRepository);
      expect(
          () => getPepUseCase.call(GetPepFullByDocumentUseCaseParams(
                token: "tokenAPI",
                document: document,
              )),
          throwsA(isInstanceOf<NotFoundException>()));
    });

    test("Não passar o documento", () async {
      PepRepository pepRepository = PepRepositoryImpl(pepRemoteDataSource);
      GetPepFullByDocumentUseCase getPepUseCase =
          GetPepFullByDocumentUseCase(pepRepository);
      expect(
          () => getPepUseCase.call(GetPepFullByDocumentUseCaseParams(
                token: "tokenAPI",
                document: null,
              )),
          throwsA(isInstanceOf<InvalidParametersException>()));
    });
  });
}
