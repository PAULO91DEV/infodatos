import 'package:dio/dio.dart';
import 'package:flutter/cupertino.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/data/datasources/pep/pep_datasource.dart';
import 'package:infodatos/domain/entities/get_pep_full_by_document_response.dart';
import 'package:infodatos/domain/entities/pep_full_entity.dart';
import 'package:infodatos/domain/entities/pep_rel_full_doc_response_entity.dart';

class PepRemoteDataSource implements PepDataSource {
  final Dio _dio;
  PepRemoteDataSource(this._dio);

  //@override
  Future<PepFullResponseEntity> getPepFull({
    @required String userLogin,
    @required String token,
    String name,
    String doc,
  }) {
    var url = "$kUrlProd/api/DaaS";
    Map<String, dynamic> params = Map<String, dynamic>();
    params[kApiFieldUserLogin] = userLogin;
    params[kApiFieldTokenAPI] = token;
    if (name != null) {
      params[KApiFieldGetPepFullName] = name;
    }
    if (doc != null) {
      params[KApiFieldGetPepFullDoc] = doc;
    }
    return this._dio.get(url, queryParameters: params).then((result) {
      return PepFullResponseEntity.fromJson(result.data);
    });
  }

  @override
  Future<GetPepFullByDocumentResponseEntity> getPepFullByDocument({
    String token,
    String document,
  }) {
    return this
        ._dio
        .get(
          "$kUrlNewApiPrd/v2/Pep/Full/$document",
          options: Options(
            headers: {
              "Authorization": 'Bearer $token',
            },
          ),
        )
        .then((result) {
      if (result.statusCode == 204) {
        throw NotFoundException(kTextNotFoundData);
      }
      return GetPepFullByDocumentResponseEntity.fromJson(result.data.first);
    });
  }

  @override
  Future<PepFullResponseEntity> getPepFullByName({
    String userLogin,
    String token,
    String name,
  }) {
    Map<String, dynamic> params = Map<String, dynamic>();
    params[kApiFieldUserLogin] = userLogin;
    params[kApiFieldTokenAPI] = token;
    params[KApiFieldGetPepFullName] = name;
    return this
        ._dio
        .get("$kUrlProd/api/DaaS", queryParameters: params)
        .then((result) {
      return PepFullResponseEntity.fromJson(result.data);
    });
  }

  @override
  Future<PepRelFullDocResponse> getPepRelFullDoc(
      {String userLogin, String token, String document}) {
    // TODO: implement getPepRelFullDoc
    throw UnimplementedError();
  }
}
