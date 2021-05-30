import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/commons/helpers.dart';
import 'package:infodatos/app/modules/login/login_controller.dart';

class LoginGeneralPageWidget extends StatefulWidget {
  @override
  _LoginGeneralPageWidgetState createState() => _LoginGeneralPageWidgetState();
}

class _LoginGeneralPageWidgetState
    extends ModularState<LoginGeneralPageWidget, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: kColor0D5C91,
          ),
          Image.asset(
            "assets/images/art-login-transp.png",
            fit: BoxFit.contain,
          ),
          Center(
            child: createCard(),
          ),
        ],
      ),
    );
  }

  Widget createCard() {
    return Card(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15.0)),
      elevation: 5.0,
      child: Container(
        width: 300,
        padding: EdgeInsets.all(24),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          SizedBox(
            height: 50,
          ),
          Image.asset(
            "assets/images/logo-infodatos-200px.png",
            width: 210,
          ),

          SizedBox(
            height: 50,
          ),

          //campo Login
          Container(
            height: 60,
            child: Observer(
              builder: (context) {
                return TextFormField(
                  onChanged: this.controller.setUsername,
                  readOnly: this.controller.isLoading,
                  decoration: InputDecoration(
                    labelText: "Login",
                    labelStyle: TextStyle(
                      color: Colors.black38,
                      fontWeight: FontWeight.w400,
                      fontSize: 18,
                    ),
                  ),
                );
              },
            ),
          ),

          //campo senha
          Container(
            height: 60,
            child: Observer(builder: (_) {
              return TextFormField(
                keyboardType: TextInputType.text,
                obscureText: this.controller.isPasswordVisible == false,
                onChanged: this.controller.setPassword,
                readOnly: this.controller.isLoading,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 18,
                  ),
                  suffixIcon: Container(
                    width: 24,
                    height: 24,
                    child: FlatButton(
                      padding: EdgeInsets.zero,
                      onPressed: (this.controller.isLoading
                          ? null
                          : () {
                              this.controller.changePasswordVisibility();
                            }),
                      child: Icon(this.controller.isPasswordVisible
                          ? Icons.visibility
                          : Icons.visibility_off),
                    ),
                  ),
                ),
                style: TextStyle(fontSize: 20),
              );
            }),
          ),

          //recuperação de senha
          // Container(
          //   height: 40,
          //   alignment: Alignment.centerRight,
          //   child: Observer(
          //     builder: (_) {
          //       return FlatButton(
          //         child: Text(
          //           "Recuperar Senha",
          //           textAlign: TextAlign.right,
          //         ),
          //         onPressed: (this.controller.isLoading ? null : () {}),
          //       );
          //     },
          //   ),
          // ),

          // Tratamento de Erro
          Observer(
            builder: (_) {
              return displayByConditionWidget(
                childPositive: Text(this.controller.error ?? ""),
                childNegative: Container(),
                condition: this.controller.error != null,
              );
            },
          ),

          //espaço
          Container(
            height: 50,
          ),

          //botão Acessar

          Observer(
            builder: (_) {
              return Container(
                width: 180,
                height: 40,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topLeft,
                    end: Alignment.bottomRight,
                    stops: [0.3, 1],
                    colors: [
                      Colors.lightGreen,
                      Colors.lightGreen[500],
                    ],
                  ),
                  borderRadius: BorderRadius.all(
                    Radius.circular(6),
                  ),
                ),
                child: SizedBox.expand(
                  child: displayByConditionWidget(
                    childPositive: Center(
                      child: Container(
                        width: 24,
                        height: 24,
                        child: CircularProgressIndicator(
                          valueColor:
                              AlwaysStoppedAnimation<Color>(Colors.white),
                        ),
                      ),
                    ),
                    childNegative: FlatButton(
                      disabledColor: Colors.grey,
                      padding: EdgeInsets.all(0),
                      child: Row(children: <Widget>[
                        Expanded(
                          child: Text(
                            "Acessar",
                            textAlign: TextAlign.center,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                              fontSize: 20,
                            ),
                          ),
                        ),
                      ]),
                      onPressed: onLoginButtonListener(() {
                        this.controller.onLoginButtonClicked();
                      }), // chamar a Page
                    ),
                    condition: this.controller.isLoading,
                  ),
                ),
              );
            },
          ),

          Container(
            height: 50,
          ),
        ]),
      ),
    );
  }

  Function onLoginButtonListener(Function onPressed) {
    if (this.controller.isLoginButtonEnabled) {
      return onPressed;
    }
    return null;
  }
}
