import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infodatos/app/app_module.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/data/datasources/ceaf/ceaf_datasource.dart';
import 'package:infodatos/data/datasources/ceaf/mock/ceaf_mock_datasource_impl.dart';
import 'package:infodatos/data/datasources/ceaf/remote/ceaf_remote_datasource_impl.dart';
import 'package:infodatos/data/repositories/ceaf_repository_impl.dart';
import 'package:infodatos/domain/entities/ceaf_entity.dart';
import 'package:infodatos/domain/repositories/ceaf_repository.dart';
import 'package:infodatos/domain/usecases/ceaf/get_ceaf_usecase.dart';

void main() {
  Dio dio;
  String tokenAPI;
  String userLogin;
  CeafDataSource ceafMockDataSource;
  CeafDataSource ceafRemoteDataSource;

  initModule(AppModule());

  Dio _createDio() {
    Dio dio = Dio();
    // dio.interceptors.add(LogInterceptor(
    //     requestHeader: true, requestBody: true, responseBody: true));
    return dio;
  }

  setUp(() {
    tokenAPI = "FEE8A4B2-9C33-4F06-8D3E-19D3580EBF6F";
    userLogin = "OLEOLA";
    dio = _createDio();
    ceafMockDataSource = CeafMockDataSourceImpl();
    ceafRemoteDataSource = CeafRemoteDataSourceImpl(dio);
  });

  group('Ceaf', () {
    test("Initialize Test", () {
      expect(dio != null, true);
      expect(tokenAPI != null && tokenAPI.isNotEmpty, true);
      expect(userLogin != null && userLogin.isNotEmpty, true);
      expect(ceafMockDataSource, isInstanceOf<CeafMockDataSourceImpl>());
      expect(ceafRemoteDataSource, isInstanceOf<CeafRemoteDataSourceImpl>());
    });

    test("Mock Test", () async {
      CeafRepository ceafRepository = CeafRepositoryImpl(ceafMockDataSource);
      GetCeafUseCase getCeafUseCase = GetCeafUseCase(ceafRepository);

      List<CeafEntity> result = await getCeafUseCase(GetCeafUseCaseParams(
        cpf: "55867472949",
        tokenAPI: tokenAPI,
        userLogin: userLogin,
      ));
      expect(result != null, true);
      expect(result.isNotEmpty, true);
    });

    test("Procurar por cpf", () async {
      CeafRepository ceafRepository = CeafRepositoryImpl(ceafRemoteDataSource);
      GetCeafUseCase getCeafUseCase = GetCeafUseCase(ceafRepository);
      var result = await getCeafUseCase.call(GetCeafUseCaseParams(
          tokenAPI: tokenAPI, userLogin: userLogin, cpf: "55867472949"));
      expect(result != null, true);
      expect(result.isNotEmpty, true);
      expect(result.first.cpf == "55867472949", true);
    });

    test("Procurar por nome", () async {
      CeafRepository ceafRepository = CeafRepositoryImpl(ceafRemoteDataSource);
      GetCeafUseCase getCeafUseCase = GetCeafUseCase(ceafRepository);
      var result = await getCeafUseCase.call(GetCeafUseCaseParams(
          tokenAPI: tokenAPI,
          userLogin: userLogin,
          name: "ADEMIR AGOSTINHO DE CAMPOS"));
      expect(result != null, true);
      expect(result.isNotEmpty, true);
      expect(result.first.nome == "ADEMIR AGOSTINHO DE CAMPOS", true);
    });

    test("Procurar por cpf errado", () async {
      CeafRepository ceafRepository = CeafRepositoryImpl(ceafRemoteDataSource);
      GetCeafUseCase getCeafUseCase = GetCeafUseCase(ceafRepository);
      var result = await getCeafUseCase.call(GetCeafUseCaseParams(
          tokenAPI: tokenAPI, userLogin: userLogin, cpf: "55867472940"));
      expect(result != null, true);
      expect(result.isEmpty, true);
    });

    test("Procurar por nome errado", () async {
      CeafRepository ceafRepository = CeafRepositoryImpl(ceafRemoteDataSource);
      GetCeafUseCase getCeafUseCase = GetCeafUseCase(ceafRepository);
      var result = await getCeafUseCase.call(GetCeafUseCaseParams(
          tokenAPI: tokenAPI, userLogin: userLogin, name: "AJLAD LDJHLA"));
      expect(result != null, true);
      expect(result.isEmpty, true);
    });

    test("Não passar nome e nem cpf", () async {
      CeafRepository ceafRepository = CeafRepositoryImpl(ceafRemoteDataSource);
      GetCeafUseCase getCeafUseCase = GetCeafUseCase(ceafRepository);
      try {
        var result = await getCeafUseCase.call(GetCeafUseCaseParams(
          tokenAPI: tokenAPI,
          userLogin: userLogin,
        ));
        expect(result != null, true);
        expect(result.isEmpty, true);
      } catch (error) {
        expect(error is InvalidParametersException, true);
      }
    });
  });
}
