import 'package:infodatos/data/datasources/pep/pep_datasource.dart';
import 'package:infodatos/domain/entities/get_pep_full_by_document_response.dart';
import 'package:infodatos/domain/entities/pep_full_document_response_entity.dart';
import 'package:infodatos/domain/entities/pep_full_entity.dart';
import 'package:infodatos/domain/entities/pep_rel_full_doc_response_entity.dart';
import 'package:infodatos/domain/repositories/pep_repository.dart';

class PepRepositoryImpl implements PepRepository {
  final PepDataSource _dataSource;
  PepRepositoryImpl(this._dataSource);

  @override
  Future<PepFullResponseEntity> getPepFull({
    String userLogin,
    String token,
    String name,
    String doc,
  }) {}

  @override
  Future<GetPepFullByDocumentResponseEntity> getPepFullByDocument({
    String token,
    String document,
  }) {
    return this._dataSource.getPepFullByDocument(
          token: token,
          document: document,
        );
  }

  @override
  Future<PepRelFullDocResponse> getPepRelFullDoc({
    String userLogin,
    String token,
    String document,
  }) {
    return this._dataSource.getPepRelFullDoc(
          userLogin: userLogin,
          token: token,
          document: document,
        );
  }
}
