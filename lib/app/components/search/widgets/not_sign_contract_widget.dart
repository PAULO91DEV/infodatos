import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:lottie/lottie.dart';

class NotSignContractWidget extends StatefulWidget {
  NotSignContractWidget({Key key}) : super(key: key);

  @override
  _NotSignContractWidgetState createState() => _NotSignContractWidgetState();
}

class _NotSignContractWidgetState extends State<NotSignContractWidget> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Container(
        padding: EdgeInsets.all(24),
        width: constraints.biggest.width,
        child: Center(
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 220,
                child: LottieBuilder.asset(
                  "lottie/sign_contract_contract_approved.json",
                  repeat: true,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(kTextNoSignContract),
              Text("Ligue já para o Djalma!"),
            ],
          ),
        ),
      );
    });
  }
}
