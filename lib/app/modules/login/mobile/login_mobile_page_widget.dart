import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/modules/login/login_controller.dart';

class LoginMobilePageWidget extends StatefulWidget {
  @override
  _LoginMobilePageWidgetState createState() => _LoginMobilePageWidgetState();
}

class _LoginMobilePageWidgetState
    extends ModularState<LoginMobilePageWidget, LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 80, left: 40, right: 40),
        color: Colors.white,
        child: ListView(children: <Widget>[
          SizedBox(
            width: 128,
            height: 128,
            child: Image.network(
                'https://www.infodatos.com.br/wp-content/uploads/2019/06/logo-infodatos-512px.png'),
          ),

          //espaço entre logo e caixa de texto
          SizedBox(
            height: 20,
          ),

          //campo Login
          Container(
            child: TextFormField(
              onChanged: this.controller.setUsername,
              decoration: InputDecoration(
                labelText: "Login",
                labelStyle: TextStyle(
                  color: Colors.black38,
                  fontWeight: FontWeight.w400,
                  fontSize: 20,
                ),
              ),
            ),
          ),

          //campo senha
          Container(child: Observer(
            builder: (_) {
              return TextFormField(
                keyboardType: TextInputType.text,
                obscureText: this.controller.isPasswordVisible == false,
                onChanged: this.controller.setPassword,
                decoration: InputDecoration(
                  labelText: "Senha",
                  labelStyle: TextStyle(
                    color: Colors.black38,
                    fontWeight: FontWeight.w400,
                    fontSize: 20,
                  ),
                  suffixIcon: FlatButton(
                    onPressed: () {
                      this.controller.changePasswordVisibility();
                    },
                    child: Icon(this.controller.isPasswordVisible
                        ? Icons.visibility
                        : Icons.visibility_off),
                  ),
                ),
                style: TextStyle(fontSize: 20),
              );
            },
          )),

          //botão recupera senha
          Container(
            height: 40,
            alignment: Alignment.centerRight,
            child: FlatButton(
              child: Text(
                "Recuperar Senha",
                textAlign: TextAlign.right,
              ),
              onPressed: () {
                //abrir nova page
              },
            ),
          ),

          //espaço
          Container(
            height: 50,
          ),

          //botão acessar
          Observer(
            builder: (_) {
              return Container(
                height: 60,
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
                  child: FlatButton(
                    disabledColor: Colors.grey,
                    child: Row(children: <Widget>[
                      Expanded(
                        child: Text(
                          "Acessar",
                          textAlign: TextAlign.center,
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
                ),
              );
            },
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
