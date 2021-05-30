import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:lottie/lottie.dart';

class WithoutBalanceWidget extends StatefulWidget {
  WithoutBalanceWidget({Key key}) : super(key: key);

  @override
  _WithoutBalanceWidgetState createState() => _WithoutBalanceWidgetState();
}

class _WithoutBalanceWidgetState extends State<WithoutBalanceWidget> {
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
                  "lottie/payment_failed_error.json",
                  repeat: true,
                ),
              ),
              SizedBox(
                height: 4,
              ),
              Text(kTextWithoutBalance),
              Text("Ligue já para o Djalma!"),
            ],
          ),
        ),
      );
    });
  }
}
