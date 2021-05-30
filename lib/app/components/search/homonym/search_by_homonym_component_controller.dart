import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/app_controller.dart';
import 'package:infodatos/app/commons/exceptions.dart';
import 'package:infodatos/app/components/search/pep/commons/pep_state.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:infodatos/app/widgets/tables/homonym/homonym_dto.dart';
import 'package:infodatos/domain/usecases/person/get_person_by_name_usecase.dart';
import 'package:mobx/mobx.dart';
part 'search_by_homonym_component_controller.g.dart';

class SearchByHomonymComponentController = _SearchByHomonymComponentControllerBase
    with _$SearchByHomonymComponentController;

abstract class _SearchByHomonymComponentControllerBase with Store {
  final GetPersonByNameUseCase _getPepFullByNameUseCase;
  _SearchByHomonymComponentControllerBase(this._getPepFullByNameUseCase);

  List<HomonymDto> homonyms = [];
  AppController _appController = Modular.get<AppController>();

  @observable
  PepState state;

  @observable
  String document;

  @action
  void setDocument(String document) => this.document = document;

  @action
  void search(String name, List<ItemSearchDto> searchItems) {
    this.state = PepState(isShowLoading: true);
    this
        ._getPepFullByNameUseCase
        .call(GetPersonByNameUseCaseParams(
          token: _appController?.oauthEntity?.accessToken ?? "",
          name: name,
          searchItems: searchItems,
        ))
        .then((result) {
      if (result.length == 1) {
        this.document = result.first.identityDocument;
      } else {
        this.homonyms.clear();
        result.forEach((item) {
          this.homonyms.add(
                HomonymDto(
                    item.name,
                    this._formatDocument(item.identityDocument),
                    item.identityDocument),
              );
        });
        this.state = PepState(isShowData: true);
      }
    }).catchError((error) {
      if (error is NotFoundException) {
        this.state = PepState(isShowEmptyData: true);
      }
    });
  }

  String _formatDocument(String identityDocument) {
    var document = identityDocument;
    if (CPFValidator.isValid(document)) {
      document = CPFValidator.format(document);
    } else if (CNPJValidator.isValid(document)) {
      document = CNPJValidator.format(document);
    }
    return document;
  }
}
