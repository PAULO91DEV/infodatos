import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/widgets.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/core/usecases/usecase.dart';
import 'package:infodatos/domain/entities/get_pep_full_by_document_response.dart';
import 'package:infodatos/domain/repositories/pep_repository.dart';

class GetPepFullByDocumentUseCase
    implements
        UseCase<GetPepFullByDocumentResponseEntity,
            GetPepFullByDocumentUseCaseParams> {
  final PepRepository _repository;
  GetPepFullByDocumentUseCase(this._repository);

  @override
  Future<GetPepFullByDocumentResponseEntity> call(
      GetPepFullByDocumentUseCaseParams params) {
    if (params.document == null || params.document.isEmpty) {
      throw InvalidParametersException();
    }
    var document;
    if (CPFValidator.isValid(params.document)) {
      document = CPFValidator.strip(params.document);
    } else {
      document = CNPJValidator.strip(params.document);
    }
    return this
        ._repository
        .getPepFullByDocument(
          token: params.token,
          document: document,
        )
        .then((result) {
      if (result == null) {
        throw NotFoundException(kTextNotFoundData);
      }
      return result;
    });
  }
}

class GetPepFullByDocumentUseCaseParams extends Equatable {
  final String token;
  final String document;

  GetPepFullByDocumentUseCaseParams({
    @required this.token,
    @required this.document,
  });

  @override
  List<Object> get props => [this.token, this.document];
}
