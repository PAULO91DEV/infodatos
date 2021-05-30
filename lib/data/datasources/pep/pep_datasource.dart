import 'package:flutter/material.dart';
import 'package:infodatos/domain/entities/get_pep_full_by_document_response.dart';
import 'package:infodatos/domain/entities/pep_rel_full_doc_response_entity.dart';

class PepDataSource {
  // ignore: missing_return
  Future<GetPepFullByDocumentResponseEntity> getPepFullByDocument({
    @required String token,
    @required String document,
  }) {}
  // ignore: missing_return
  Future<PepRelFullDocResponse> getPepRelFullDoc({
    @required String userLogin,
    @required String token,
    @required String document,
  }) {}
}
