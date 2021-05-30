import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/data/datasources/ceaf/ceaf_datasource.dart';
import 'package:infodatos/domain/entities/ceaf_entity.dart';

class CeafRemoteDataSourceImpl implements CeafDataSource {
  final Dio _dio;
  CeafRemoteDataSourceImpl(this._dio);

  @override
  Future<List<CeafEntity>> getCeaf({
    @required String userLogin,
    @required String token,
    String name,
    String cpf,
  }) {
    var url = "$kUrlProd/api/DaaS";
    Map<String, dynamic> params = Map<String, dynamic>();
    params[kApiFieldUserLogin] = userLogin;
    params[kApiFieldTokenAPI] = token;
    if (name != null) {
      params[kApiFieldGetCeafName] = name;
    }
    if (cpf != null) {
      params[kApiFieldGetCeafCpf] = cpf;
    }
    return this._dio.get(url, queryParameters: params).then((result) {
      var list = List<CeafEntity>();
      if (result.data != null) {
        result.data.forEach((item) {
          list.add(CeafEntity.fromJson(item));
        });
      }
      return list;
    });
  }
}
