import 'package:dio/dio.dart';
import 'package:flutter_modular/flutter_modular_test.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infodatos/app/app_module.dart';
import 'package:infodatos/app/commons/enums.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:infodatos/data/datasources/person/mock/person_mock_datasource_impl.dart';
import 'package:infodatos/data/datasources/person/person_datasource.dart';
import 'package:infodatos/data/datasources/person/remote/person_remote_datasource_impl.dart';
import 'package:infodatos/data/repositories/person_repository_impl.dart';
import 'package:infodatos/domain/entities/person_cpf_entity.dart';
import 'package:infodatos/domain/repositories/person_repository.dart';
import 'package:infodatos/domain/usecases/person/get_person_by_cpf_usecase.dart';
import 'package:infodatos/domain/usecases/person/get_person_by_name_usecase.dart';

void main() {
  Dio dio;
  String token;
  String tokenAPI;
  String userLogin;
  PersonDataSource personMockDataSource;
  PersonDataSource personRemoteDataSource;

  initModule(AppModule());

  Dio _createDio() {
    Dio dio = Dio();
    dio.interceptors.add(LogInterceptor(
        requestHeader: true, requestBody: true, responseBody: true));
    return dio;
  }

  setUp(() {
    tokenAPI = "FEE8A4B2-9C33-4F06-8D3E-19D3580EBF6F";
    userLogin = "OLEOLA";
    token =
        "eyJhbGciOiJSUzI1NiIsImtpZCI6IkJBRkZFNjU4NDREMDVEMkQ3MDQ3MTI0OUU4ODk3MTI1MEYxQTk1M0YiLCJ0eXAiOiJhdCtqd3QiLCJ4NXQiOiJ1dl9tV0VUUVhTMXdSeEpKNklseEpROGFsVDgifQ.eyJuYmYiOjE2MTQ4NjA4MzgsImV4cCI6MTYxNDg2NDQzOCwiaXNzIjoiaHR0cDovL2F1dGhlbnRpY2F0aW9uMi5pbWV2by5uZXQiLCJhdWQiOiJpbmZvZGF0b3NfYXBpIiwiY2xpZW50X2lkIjoiREVNTyIsInRva2VuIjoiQkQ4NzM2MDMtMDFBOS00MTRGLUEwRkMtQzJBRDBCMTgzRjJBIiwiYmxjbSI6IkQ5OUQ0RTlELTAyREItNEUwMy04MEIxLTVDN0RBOTM3REY1QiIsImp0aSI6IldBRWNvY0RYWGVoclg1MG5mbkUyVWciLCJzY29wZSI6WyJpbmZvZGF0b3NfYWRtaW4iLCJpbmZvZGF0b3NfcmVhZCIsInN1cDFfcmVhZCJdfQ.nFmquB9ymkPcBQVOFgteRXJWW1_Swx-UL454_LK-R3NuXRkO3YgIc9bNr3InpOcCadx_CJfIj-k5pBoSLc7qKqAWEFRdGwLjE7DZNKKUwWYQXNnPOYeKlZZ1WYS7f2YA7AEj3ibg4TMnhLer_gWRZW7VWbUWBfP8RlkxEC3Ve-rkQU_f6lqHsEutfAYYXlFK8fQ9c9YnmU7tiGXiXTKgleixh9e27r68pyTxU-Lf2Bfq4ye3N2oSj_cYZwMps73J3vDF3zCpI1ikaoeL2FacUvqLX_MQUnj9pwDnSMwMyN4R0lof4SdOc3xfKofxomAkLWZRFhFT_O03y-97EdoJ4w";
    dio = _createDio();
    personMockDataSource = PersonMockDataSourceImpl();
    personRemoteDataSource = PersonRemoteDataSourceImpl(dio);
  });
  group('Person', () {
    test("Initialize Test", () {
      expect(dio != null, true);
      expect(tokenAPI != null && tokenAPI.isNotEmpty, true);
      expect(userLogin != null && userLogin.isNotEmpty, true);
      expect(personMockDataSource, isInstanceOf<PersonMockDataSourceImpl>());
      expect(
          personRemoteDataSource, isInstanceOf<PersonRemoteDataSourceImpl>());
    });
  });

  test("Mock Test CPF", () async {
    PersonRepository personRepository =
        PersonRepositoryImpl(personMockDataSource);
    GetPersonByCpfUseCase getPersonByCpfUseCase =
        GetPersonByCpfUseCase(personRepository);
    PersonCpfEntity result =
        await getPersonByCpfUseCase(GetPersonByCpfUseCaseParams(
      tokenAPI: tokenAPI,
      userLogin: userLogin,
      cpf: "55867472949",
    ));
    expect(result != null, true);
    expect(result.nrCpf == "55867472949", true);
  });

  test("Procurar por cpf", () async {
    PersonRepository personRepository =
        PersonRepositoryImpl(personRemoteDataSource);
    GetPersonByCpfUseCase getPersonByCpfUseCase =
        GetPersonByCpfUseCase(personRepository);
    var result = await getPersonByCpfUseCase.call(GetPersonByCpfUseCaseParams(
        tokenAPI: tokenAPI, userLogin: userLogin, cpf: "55867472949"));
    expect(result != null, true);
    expect(result.nrCpf == "55867472949", true);
  });

  test("Procurar por cpf errado", () async {
    PersonRepository personRepository =
        PersonRepositoryImpl(personRemoteDataSource);
    GetPersonByCpfUseCase getPersonByCpfUseCase =
        GetPersonByCpfUseCase(personRepository);
    var getPersonByCpfUseCaseParams = GetPersonByCpfUseCaseParams(
        tokenAPI: tokenAPI, userLogin: userLogin, cpf: "55867472949");

    var result = await getPersonByCpfUseCase.call(getPersonByCpfUseCaseParams);
    expect(result != null, true);
    expect(result.nrCpf.isNotEmpty, true);
    expect(result.nrCpf == "55867472940", false);
  });

  test("Procurar por nome", () async {
    PersonRepository personRepository =
        PersonRepositoryImpl(personRemoteDataSource);
    GetPersonByNameUseCase getPersonByNameUseCase =
        GetPersonByNameUseCase(personRepository);
    var getPersonByNameUseCaseParams = GetPersonByNameUseCaseParams(
      token: token,
      name: "LUIZ CLAUDIO",
      searchItems: [
        ItemSearchDto(searchType: SearchType.PEP),
        ItemSearchDto(searchType: SearchType.RegistrationData)
      ],
    );
    var result =
        await getPersonByNameUseCase.call(getPersonByNameUseCaseParams);
    expect(result != null, true);
    expect(result.isNotEmpty, true);
    expect(result.first.name.contains("LUIZ CLAUDIO"), true);
  });

  test("Procurar por nome errado", () async {
    PersonRepository personRepository =
        PersonRepositoryImpl(personMockDataSource);
    GetPersonByNameUseCase getPersonByNameUseCase =
        GetPersonByNameUseCase(personRepository);
    expect(
        () => getPersonByNameUseCase.call(
              GetPersonByNameUseCaseParams(
                token: token,
                name: "AJLAD LDJHLA",
                searchItems: [
                  ItemSearchDto(searchType: SearchType.PEP),
                  ItemSearchDto(searchType: SearchType.RegistrationData)
                ],
              ),
            ),
        throwsA(isInstanceOf<NotFoundException>()));
  });
}
