import 'package:flutter/material.dart';
import 'package:infodatos/domain/entities/person_cnpj_entity.dart';
import 'package:infodatos/domain/entities/person_cpf_entity.dart';
import 'package:infodatos/domain/entities/person_name_entity.dart';

class PersonRepository {
  // ignore: missing_return
  Future<PersonCpfEntity> getByCpf({
    @required String userLogin,
    @required String tokenAPI,
    @required String cpf,
  }) {}

  // ignore: missing_return
  Future<PersonCnpjEntity> getByCnpj({
    @required String userLogin,
    @required String tokenAPI,
    @required String cnpj,
  }) {}

  // ignore: missing_return
  Future<List<PersonNameEntity>> getByName({
    @required String token,
    @required String name,
    @required List<String> products,
  }) {}
}
