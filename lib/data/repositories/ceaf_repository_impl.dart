import 'package:flutter/material.dart';
import 'package:infodatos/data/datasources/ceaf/ceaf_datasource.dart';
import 'package:infodatos/domain/entities/ceaf_entity.dart';
import 'package:infodatos/domain/repositories/ceaf_repository.dart';

class CeafRepositoryImpl implements CeafRepository {
  final CeafDataSource _dataSource;
  CeafRepositoryImpl(this._dataSource);

  @override
  Future<List<CeafEntity>> getCeaf({
    @required String userLogin,
    @required String token,
    String name,
    String cpf,
  }) {
    return this._dataSource.getCeaf(
          userLogin: userLogin,
          token: token,
          name: name,
          cpf: cpf,
        );
  }
}
