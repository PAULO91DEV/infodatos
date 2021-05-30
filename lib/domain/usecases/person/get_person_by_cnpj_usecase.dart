import 'package:equatable/equatable.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/entities/person_cnpj_entity.dart';
import 'package:infodatos/domain/repositories/person_repository.dart';

class GetPersonByCnpjUseCase
    implements UseCase<PersonCnpjEntity, GetPersonByCnpjUseCaseParams> {
  final PersonRepository _repository;
  GetPersonByCnpjUseCase(this._repository);

  @override
  Future<PersonCnpjEntity> call(GetPersonByCnpjUseCaseParams params) {
    return _repository.getByCnpj(
      userLogin: params.userLogin,
      tokenAPI: params.tokenAPI,
      cnpj: params.cnpj,
    );
  }
}

class GetPersonByCnpjUseCaseParams extends Equatable {
  final String cnpj;
  final String tokenAPI;
  final String userLogin;

  GetPersonByCnpjUseCaseParams({
    this.cnpj,
    this.tokenAPI,
    this.userLogin,
  });

  @override
  List<Object> get props => [this.cnpj, this.tokenAPI, this.userLogin,];
}
