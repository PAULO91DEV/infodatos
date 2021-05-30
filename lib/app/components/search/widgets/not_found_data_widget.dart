import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:lottie/lottie.dart';

class NotFoundDataWidget extends StatelessWidget {
  final double width;
  const NotFoundDataWidget({
    Key key,
    this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(24),
      width: this.width,
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 220,
              child: LottieBuilder.asset(
                "lottie/empty_and_lost.json",
                repeat: true,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(kTextNotFoundData),
          ],
        ),
      ),
    );
  }
}
