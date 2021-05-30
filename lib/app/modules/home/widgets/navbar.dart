import 'package:flutter/material.dart';

class Navbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth > 1200) {
          return DesktopNavbar();
        } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
          return DesktopNavbar();
        } else {
          return MobileNavbar();
        }
      },
    );
  }
}

class DesktopNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      decoration: BoxDecoration(
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 5,
            blurRadius: 7,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Image.asset(
            "assets/images/logo-infodatos-200px.png",
            scale: 1.4,
          ),
          Row(
            children: <Widget>[
              Text(
                "Bem vindo,",
                style: TextStyle(color: Colors.black, fontFamily: 'raleway'),
              ),
              SizedBox(
                width: 0.8,
              ),
              Text(
                "Usuário",
                style: TextStyle(color: Colors.black, fontFamily: 'raleway'),
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Text(
                  "Configurações",
                  style: TextStyle(color: Colors.black, fontFamily: 'raleway'),
                ),
                onTap: () {},
              ),
              SizedBox(
                width: 20,
              ),
              GestureDetector(
                child: Text(
                  "Sair",
                  style: TextStyle(color: Colors.black, fontFamily: 'raleway'),
                ),
                onTap: () {},
              ),
            ],
          )
        ],
      ),
    );
  }
}

class MobileNavbar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 40),
      child: Container(
        child: Column(children: <Widget>[
          Image.asset("assets/images/logo-infodatos-200px.png"),
          Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Text(
                  "Bem vindo",
                  style: TextStyle(color: Colors.black, fontFamily: 'raleway'),
                ),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Usuário",
                  style: TextStyle(color: Colors.black, fontFamily: 'raleway'),
                ),
              ],
            ),
          )
        ]),
      ),
    );
  }
}
