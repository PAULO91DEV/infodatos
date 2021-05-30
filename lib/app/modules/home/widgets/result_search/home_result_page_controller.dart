import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:mobx/mobx.dart';
import 'package:infodatos/app/commons/helpers.dart';

part 'home_result_page_controller.g.dart';

class HomeResultPageController = _HomeResultPageControllerBase
    with _$HomeResultPageController;

abstract class _HomeResultPageControllerBase with Store {
  @observable
  String name;

  @observable
  String document;

  @observable
  bool isSearchByName = false;

  @action
  void search(String document, String name) {
    this.searchByName(name);
    this.searchByDocument(document);
  }

  @action
  void searchByName(String name) {
    this.name = name;
    this.isSearchByName = name.isNotNullAndEmpty();
  }

  @action
  void searchByDocument(String document) {
    this.document = document;
    this.isSearchByName = name.isNotNullAndEmpty();
  }
}
