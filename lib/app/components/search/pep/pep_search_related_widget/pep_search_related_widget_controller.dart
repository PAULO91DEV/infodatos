import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/app/components/search/pep/commons/pep_state.dart';
import 'package:infodatos/app/widgets/tables/pep_related/pep_related_dto.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_rel_full_by_document_usecase.dart';
import 'package:mobx/mobx.dart';
part 'pep_search_related_widget_controller.g.dart';

class PepSearchRelatedWidgetController = _PepSearchRelatedWidgetControllerBase
    with _$PepSearchRelatedWidgetController;

abstract class _PepSearchRelatedWidgetControllerBase with Store {
  final GetPepRelFullByDocumentUseCase _getPepRelFullByDocumentUseCase;
  _PepSearchRelatedWidgetControllerBase(this._getPepRelFullByDocumentUseCase);

  List<PepRelatedDto> personsRelated = [];

  @observable
  PepState state;

  @action
  void search(String document) {
    this.state = PepState(isShowLoading: true);
    this
        ._getPepRelFullByDocumentUseCase
        .call(GetPepRelFullByDocumentUseCaseParams(
          username: null,
          token: null,
          document: document,
        ))
        .then((result) {
      this.personsRelated = result
          .map((e) => PepRelatedDto(
                bond: e.vinculo,
                name: e.nomeRelacionado,
                type: e.tipo,
                document: e.cpfCnpj,
              ))
          .toList();
      this.state = PepState(isShowData: true);
    }).catchError((error) {
      if (error is NotFoundException) {
        this.state = PepState(isShowEmptyData: true);
      } else {
        this.state = PepState();
      }
    });
  }
}
