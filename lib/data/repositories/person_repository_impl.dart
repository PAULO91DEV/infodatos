import 'package:infodatos/data/datasources/person/person_datasource.dart';
import 'package:infodatos/domain/entities/person_name_entity.dart';
import 'package:infodatos/domain/entities/person_cpf_entity.dart';
import 'package:infodatos/domain/entities/person_cnpj_entity.dart';
import 'package:infodatos/domain/repositories/person_repository.dart';

class PersonRepositoryImpl implements PersonRepository {
  final PersonDataSource _dataSource;
  PersonRepositoryImpl(this._dataSource);

  @override
  Future<PersonCnpjEntity> getByCnpj({
    String userLogin,
    String tokenAPI,
    String cnpj,
  }) {
    return this._dataSource.getByCnpj(
          userLogin: userLogin,
          tokenAPI: tokenAPI,
          cnpj: cnpj,
        );
  }

  @override
  Future<PersonCpfEntity> getByCpf({
    String userLogin,
    String tokenAPI,
    String cpf,
  }) {
    return this._dataSource.getByCpf(
          userLogin: userLogin,
          tokenAPI: tokenAPI,
          cpf: cpf,
        );
  }

  @override
  Future<List<PersonNameEntity>> getByName({
    String token,
    String name,
    List<String> products,
  }) {
    return this._dataSource.getByName(
          token: token,
          name: name,
          products: products,
        );
  }
}
