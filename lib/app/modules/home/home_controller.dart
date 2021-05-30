import 'package:flutter/widgets.dart';
import 'package:mobx/mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';

part 'home_controller.g.dart';

@Injectable()
class HomeController = _HomeControllerBase with _$HomeController;

abstract class _HomeControllerBase with Store {
  @observable
  Widget body = Container();

  @action
  void showBodyWidget(Widget widget) {
    this.body = widget;
  }
}
