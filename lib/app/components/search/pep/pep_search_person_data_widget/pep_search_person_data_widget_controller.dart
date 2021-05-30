import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/app_controller.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/app/components/search/pep/commons/pep_state.dart';
import 'package:infodatos/domain/entities/get_pep_full_by_document_response.dart';
import 'package:infodatos/domain/entities/pep_full_document_response_entity.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_full_by_document_usecase.dart';
import 'package:mobx/mobx.dart';
part 'pep_search_person_data_widget_controller.g.dart';

class PepSearchPersonDataWidgetController = _PepSearchPersonDataWidgetControllerBase
    with _$PepSearchPersonDataWidgetController;

abstract class _PepSearchPersonDataWidgetControllerBase with Store {
  final GetPepFullByDocumentUseCase _getPepFullByDocumentUseCase;
  _PepSearchPersonDataWidgetControllerBase(this._getPepFullByDocumentUseCase);

  PepFullDocumentDataResultEntity pepFullDocumentDataResultEntity;
  GetPepFullByDocumentResponseEntity getPepFullByDocumentResponseEntity;

  String document;
  AppController _appController = Modular.get<AppController>();

  @observable
  PepState state;

  @observable
  bool isShowRelated = false;

  @action
  void setShowRelated(bool value) => this.isShowRelated = value;

  @action
  void search(String document) {
    print("#### PEP Consulta por document $document");
    this.document = document;
    this.isShowRelated = false;
    this.state = PepState(isShowLoading: true);
    this
        ._getPepFullByDocumentUseCase
        .call(GetPepFullByDocumentUseCaseParams(
          token: this._appController?.oauthEntity?.accessToken,
          document: document,
        ))
        .then((result) {
      this.getPepFullByDocumentResponseEntity = result;
      this.state = PepState(isShowData: true);
    }).catchError((error) {
      print("##### PepSearchPersonDataComponentController => error = $error");
      if (error is NotFoundException) {
        this.state = PepState(isShowEmptyData: true);
      }
    });
  }
}
