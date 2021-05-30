import 'package:infodatos/app/components/search/pep/commons/pep_state.dart';
import 'package:mobx/mobx.dart';
part 'pep_search_company_data_widget_controller.g.dart';

class PepSearchCompanyDataWidgetController = _PepSearchCompanyDataWidgetControllerBase
    with _$PepSearchCompanyDataWidgetController;

abstract class _PepSearchCompanyDataWidgetControllerBase with Store {
  @observable
  PepState state;

  @action
  void search(String document) {
    this.state = PepState(isShowData: true);
  }
}
