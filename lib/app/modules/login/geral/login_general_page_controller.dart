import 'package:mobx/mobx.dart';
part 'login_general_page_controller.g.dart';

class LoginGeneralPageController = _LoginGeneralPageControllerBase with _$LoginGeneralPageController;

abstract class _LoginGeneralPageControllerBase with Store {
  @observable
  bool isPasswordVisible = false;

  @action
  void changePasswordVisibility() => this.isPasswordVisible = !this.isPasswordVisible;
}