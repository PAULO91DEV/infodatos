import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:cpf_cnpj_validator/cpf_validator.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/commons/enums.dart';
import 'package:infodatos/app/modules/home/home_controller.dart';
import 'package:infodatos/app/modules/home/widgets/result_search/home_result_page.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:mobx/mobx.dart';

part 'home_search_page_controller.g.dart';

class HomeSearchPageController = _HomeSearchPageControllerBase
    with _$HomeSearchPageController;

abstract class _HomeSearchPageControllerBase with Store {
  @observable
  String name;

  @observable
  String document;

  @observable
  ObservableList<ItemSearchDto> searchItems = ObservableList<ItemSearchDto>();

  @computed
  bool get isSearchButtonEnabled => this._checkStateSearchButton();

  @action
  void init() {
    this._populate();
  }

  @action
  void setName(String name) => this.name = name;

  @action
  void setDocument(String number) => this.document = number;

  @action
  void onItemSearchClicked(ItemSearchDto item) {
    var result =
        this.searchItems.firstWhere((element) => element.order == item.order);
    result.isChecked = !result.isChecked;
    this.searchItems = this.searchItems.asObservable();
    print("####S isSearchButtonEnabled => ${this.isSearchButtonEnabled}");
  }

  @action
  void onSearchButtonClicked() {
    Modular.get<HomeController>().showBodyWidget(
      HomeResultSearchPage(
        searchItems:
            this.searchItems.where((element) => element.isChecked).toList(),
        name: this.name,
        document: this.document,
      ),
    );
  }

  void _populate() {
    List<ItemSearchDto> items = [];
    items.add(
      ItemSearchDto(
        order: 1,
        title: "Dados Cadastrais",
        searchType: SearchType.RegistrationData,
        isVisible: false,
        isEnabled: false,
      ),
    );
    items.add(
      ItemSearchDto(
          order: 2,
          title: "PEP",
          tooltip:
              "A solução identifica pessoas expostas politicamente, que ocupam ou ocuparam cargos públicos relevantes. A base é composta pelos grupos: PEPs Titulares, PEPs Titulares Extraoficiais e PEPs Relacionados.",
          searchType: SearchType.PEP),
    );
    items.add(
      ItemSearchDto(
          order: 3,
          title: "Mídias",
          isEnabled: false,
          tooltip:
              "Perfis de Pessoas Físicas e Jurídicas que são citadas nos principais portais de notícias, com envolvimento em atividades ilícitas (KYC e PLD/AML).",
          searchType: SearchType.Media),
    );
    items.add(
      ItemSearchDto(
          order: 4,
          title: "Bolsa Família",
          isEnabled: false,
          tooltip:
              "Perfis de Pessoas Físicas e Jurídicas, que sofreram Autuações Ambientais e Embargos, pela fiscalização ambiental.",
          searchType: SearchType.FamilyGrant),
    );
    items.add(
      ItemSearchDto(
          order: 5,
          title: "Ibama",
          isEnabled: false,
          tooltip:
              "Perfis de Pessoas Físicas que possuem o direito ao benefício federal.",
          searchType: SearchType.Ibama),
    );
    items.add(
      ItemSearchDto(
          order: 6,
          title: "Imóveis",
          isEnabled: false,
          tooltip:
              "Base de dados com informações dos contribuintes de IPTU na cidade de São Paulo/SP.",
          searchType: SearchType.Properties),
    );
    items.add(
      ItemSearchDto(
          order: 7,
          title: "Servidores Publicos",
          isEnabled: false,
          tooltip:
              "A solução identifica Pessoas, Civis e Militares, do Executivo Federal.",
          searchType: SearchType.PublicServers),
    );
    items.add(
      ItemSearchDto(
          order: 8,
          title: "Sanções Nacionais",
          isEnabled: false,
          tooltip:
              "Perfis de Pessoas Físicas e Jurídicas que sofreram algum tipo de Sanção.",
          searchType: SearchType.NationalSanctions),
    );
    items.add(
      ItemSearchDto(
          order: 9,
          title: "Sanções Internacionais",
          isEnabled: false,
          tooltip:
              "Perfis de Pessoas Físicas, Jurídicas, Grupos, Organizações e Países com Sanções Financeiras Internacionais e/ou ligadas ao Terrorismo.",
          searchType: SearchType.InternationalSanctions),
    );
    items.add(
      ItemSearchDto(
          order: 10,
          title: "TCU",
          isEnabled: false,
          tooltip:
              "Apresenta informações acerca de todos os responsáveis que tiveram suas contas julgadas irregulares pelo TCU (Tribunal de Contas da União), a partir da data dos respectivos acórdãos condenatórios.",
          searchType: SearchType.TCU),
    );
    items.add(
      ItemSearchDto(
          order: 11,
          title: "Trabalho Escravo",
          isEnabled: false,
          tooltip:
              "Perfis de Empregadores, Pessoas Físicas e Jurídicas que, tenham submetido trabalhadores a condições análogas à escravidão.",
          searchType: SearchType.Slavery),
    );
    this.searchItems = items.asObservable();
  }

  bool _checkStateSearchButton() {
    String value;
    if (this.name != null && this.name.isNotEmpty) {
      value = this.name;
    } else if (this.document != null && this.document.isNotEmpty) {
      if (CPFValidator.isValid(this.document) ||
          CNPJValidator.isValid(this.document)) {
        value = this.document;
      }
    }
    return (value != null &&
        value.isNotEmpty &&
        this
            .searchItems
            .where((element) => element.isChecked && element.isEnabled)
            .isNotEmpty);
  }
}
