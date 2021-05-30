import 'package:equatable/equatable.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/entities/person_cpf_entity.dart';
import 'package:infodatos/domain/repositories/person_repository.dart';

class GetPersonByCpfUseCase
    implements UseCase<PersonCpfEntity, GetPersonByCpfUseCaseParams> {
  final PersonRepository _repository;
  GetPersonByCpfUseCase(this._repository);

  @override
  Future<PersonCpfEntity> call(GetPersonByCpfUseCaseParams params) {
    return _repository.getByCpf(
      userLogin: params.userLogin,
      tokenAPI: params.tokenAPI,
      cpf: params.cpf,
    );
  }
}

class GetPersonByCpfUseCaseParams extends Equatable {
  final String cpf;
  final String tokenAPI;
  final String userLogin;

  GetPersonByCpfUseCaseParams({
    this.cpf,
    this.tokenAPI,
    this.userLogin,
  });

  @override
  List<Object> get props => [
        this.cpf,
        this.tokenAPI,
        this.userLogin,
      ];
}
