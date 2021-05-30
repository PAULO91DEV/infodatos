import 'package:device_preview/device_preview.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/route_page.dart';
import 'package:infodatos/app/modules/login/geral/login_general_page_widget.dart';
import 'package:infodatos/app/modules/login/mobile/login_mobile_page_widget.dart';


void main() {
  runApp(DevicePreview(
    builder: (context) => LoginPage(),
    enabled: !kReleaseMode,
  ));
}

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         body: RoutePage(
          mobilePage: LoginMobilePageWidget(),
          generalPage: LoginGeneralPageWidget(),
        ));
  }
}