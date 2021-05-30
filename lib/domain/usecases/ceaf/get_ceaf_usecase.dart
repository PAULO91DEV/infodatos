import 'package:equatable/equatable.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/entities/ceaf_entity.dart';
import 'package:infodatos/domain/repositories/ceaf_repository.dart';

class GetCeafUseCase
    implements UseCase<List<CeafEntity>, GetCeafUseCaseParams> {
  final CeafRepository _repository;
  GetCeafUseCase(this._repository);

  @override
  Future<List<CeafEntity>> call(GetCeafUseCaseParams params) {
    if ((params.name == null || params.name.isEmpty) &&
        (params.cpf == null || params.cpf.isEmpty)) {
      throw InvalidParametersException();
    }
    return this._repository.getCeaf(
          userLogin: params.userLogin,
          token: params.tokenAPI,
          name: params.name,
          cpf: params.cpf,
        );
  }
}

class GetCeafUseCaseParams extends Equatable {
  final String name;
  final String cpf;
  final String tokenAPI;
  final String userLogin;

  GetCeafUseCaseParams({
    this.name,
    this.cpf,
    this.tokenAPI,
    this.userLogin,
  });

  @override
  List<Object> get props => [
        this.name,
        this.cpf,
        this.tokenAPI,
        this.userLogin,
      ];
}
