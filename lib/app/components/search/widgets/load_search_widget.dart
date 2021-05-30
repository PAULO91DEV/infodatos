import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:lottie/lottie.dart';

class LoadSearchWidget extends StatelessWidget {
  final double width;
  const LoadSearchWidget({Key key, this.width}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: this.width,
      padding: EdgeInsets.all(2),
      child: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Container(
              height: 220,
              child: LottieBuilder.asset(
                "lottie/scanning_searching_for_data.json",
                repeat: true,
              ),
            ),
            SizedBox(
              height: 4,
            ),
            Text(kTextWaiting),
          ],
        ),
      ),

      // child: Row(
      //   children: [
      //     Expanded(
      //       child: Container(
      //         color: Colors.green,
      //         child: Text("teste"),
      //       ),
      //     ),
      //   ],
      // ),
    );
    // return Container(
    //width: constraints.biggest.width,
    // color: Colors.green,
    // child: ,
    // child: Center(
    //   child: Column(
    //     mainAxisSize: MainAxisSize.min,
    //     children: [
    //       // Container(
    //       //   height: 220,
    //       //   child: LottieBuilder.asset(
    //       //     "lottie/scanning_searching_for_data.json",
    //       //     repeat: true,
    //       //   ),
    //       // ),
    //       SizedBox(
    //         height: 4,
    //       ),
    //       Text(kTextWaiting),
    //     ],
    //   ),
    // ),
    // );
  }
}
