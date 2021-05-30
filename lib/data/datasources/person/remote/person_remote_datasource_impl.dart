import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/domain/entities/person_name_entity.dart';
import 'package:infodatos/domain/entities/person_cpf_entity.dart';
import 'package:infodatos/domain/entities/person_cnpj_entity.dart';
import '../person_datasource.dart';
import 'package:dio/dio.dart';
import 'package:infodatos/app/commons/constants.dart';

class PersonRemoteDataSourceImpl implements PersonDataSource {
  final Dio _dio;

  PersonRemoteDataSourceImpl(this._dio);

  @override
  Future<PersonCnpjEntity> getByCnpj(
      {String userLogin, String tokenAPI, String cnpj}) {
    var url = "$kUrlProd/api/DaaS";
    Map<String, dynamic> params = Map<String, dynamic>();
    params[kApiFieldUserLogin] = userLogin;
    params[kApiFieldTokenAPI] = tokenAPI;
    params[kApiFieldGetPersonCnpj] = cnpj;

    return this._dio.get(url, queryParameters: params).then((result) {
      if (result.data != null) {
        return PersonCnpjEntity.fromJson(result.data);
      }
      return null;
    });
  }

  @override
  Future<PersonCpfEntity> getByCpf(
      {String userLogin, String tokenAPI, String cpf}) {
    var url = "$kUrlProd/api/DaaS";
    Map<String, dynamic> params = Map<String, dynamic>();
    params[kApiFieldUserLogin] = userLogin;
    params[kApiFieldTokenAPI] = tokenAPI;
    params[kApiFieldGetPersonCpf] = cpf;

    return this._dio.get(url, queryParameters: params).then((result) {
      if (result.data != null) {
        return PersonCpfEntity.fromJson(result.data);
      }
      return null;
    });
  }

  @override
  Future<List<PersonNameEntity>> getByName({
    String token,
    String name,
    List<String> products,
  }) {
    var url = "$kUrlSearchApiPrd/v2/Search";
    var productsInline = "";
    for (var idx = 0; idx < products.length; idx++) {
      if (idx > 0) {
        productsInline += ",";
      }
      productsInline += products[idx];
    }
    Map<String, dynamic> params = Map<String, dynamic>();
    params[kApiFieldName] = name;
    params[kApiFieldSearchInDatabases] = productsInline;
    return this
        ._dio
        .get(
          url,
          queryParameters: params,
          options: Options(
            headers: {
              "Authorization": 'Bearer $token',
            },
          ),
        )
        .then((result) {
      if (result.statusCode == 200) {
        List<PersonNameEntity> persons = [];
        for (var idx = 0; idx < result.data.length; idx++) {
          persons.add(PersonNameEntity.fromJson(result.data[idx]));
        }
        return persons;
      }
      throw NotFoundException(kTextNotFoundData);
    });
  }
}
