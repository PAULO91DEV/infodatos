import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/domain/usecases/oauth/authenticate_usecase.dart';
import 'package:mobx/mobx.dart';

part 'login_controller.g.dart';

@Injectable()
class LoginController = _LoginControllerBase with _$LoginController;

abstract class _LoginControllerBase with Store {
  final AuthenticateUseCase authenticateUseCase;
  _LoginControllerBase({@required this.authenticateUseCase});

  @observable
  bool isPasswordVisible = false;

  @observable
  String username;

  @observable
  String password;

  @observable
  String error;

  @observable
  bool isLoading = false;

  @computed
  bool get isLoginButtonEnabled =>
      this.username != null &&
      this.username.isNotEmpty &&
      this.password != null &&
      this.password.isNotEmpty;

  @action
  void setUsername(String username) => this.username = username;

  @action
  void setPassword(String password) => this.password = password;

  @action
  void changePasswordVisibility() =>
      this.isPasswordVisible = !this.isPasswordVisible;

  @action
  void onLoginButtonClicked() {
    this.isLoading = true;
    this
        .authenticateUseCase
        .call(AuthenticateUseCaseParams(this.username, this.password))
        .then((value) {
      Modular.to.pushReplacementNamed("/home");
    }).catchError((error) {
      this.isLoading = false;
      if (error is DioError) {
        if (error?.response?.statusCode == 400) {
          this.error = kErrorTextInvalidUsernameOrPassword;
          return;
        }
      }
      this.error = kErrorGeneric;
    });
  }
}
