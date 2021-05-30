import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/modules/home/widgets/navbar.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/home_search_page.dart';

import 'home_controller.dart';

class HomePage extends StatefulWidget {
  final String title;
  const HomePage({Key key, this.title = "Home"}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends ModularState<HomePage, HomeController> {
  @override
  void initState() {
    super.initState();
    this.controller.showBodyWidget(HomeSearchPage());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Navbar(),
          Expanded(
            child: Observer(
              builder: (_) {
                return this.controller.body;
              },
            ),
          ),
        ],
      ),
    );
  }
}
