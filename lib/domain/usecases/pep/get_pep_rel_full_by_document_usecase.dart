import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/entities/pep_rel_full_doc_response_entity.dart';
import 'package:infodatos/domain/repositories/pep_repository.dart';

class GetPepRelFullByDocumentUseCase
    implements
        UseCase<List<PepRelFullDocDataResult>,
            GetPepRelFullByDocumentUseCaseParams> {
  final PepRepository _repository;
  GetPepRelFullByDocumentUseCase(this._repository);
  @override
  Future<List<PepRelFullDocDataResult>> call(
      GetPepRelFullByDocumentUseCaseParams params) {
    return this
        ._repository
        .getPepRelFullDoc(
          userLogin: params.username,
          token: params.token,
          document: params.document,
        )
        .then((result) {
      if (result.data.response.code == 200) {
        return result.data.result;
      } else if (result.data.response.code == 404) {
        throw NotFoundException(result?.data?.response?.message);
      }
      throw Exception();
    });
  }
}

class GetPepRelFullByDocumentUseCaseParams extends Equatable {
  final String username;
  final String token;
  final String document;

  GetPepRelFullByDocumentUseCaseParams({
    @required this.username,
    @required this.token,
    @required this.document,
  });

  @override
  List<Object> get props => [this.username, this.token, this.document];
}
