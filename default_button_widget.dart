import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/helpers.dart';

class DefaultButtonWidget extends StatelessWidget {
  final String text;
  final Icon icon;
  final bool isEnabled;
  final VoidCallback onPressed;
  const DefaultButtonWidget({
    Key key,
    this.text,
    this.icon,
    this.isEnabled = true,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      child: FlatButton(
        color: Colors.blue[900],
        hoverColor: Colors.green,
        disabledColor: Colors.grey[350],
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20.0),
        ),
        onPressed: (this.isEnabled
            ? (this.onPressed != null ? this.onPressed : () {})
            : null),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            displayByConditionWidget(
              childPositive: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    this.icon.icon,
                    color: (this.isEnabled ? Colors.white : Colors.black),
                  ),
                  SizedBox(
                    width: 8,
                  ),
                ],
              ),
              childNegative: Container(),
              condition: this.icon != null,
            ),
            Text(
              this.text,
              style: TextStyle(
                fontSize: 14.0,
                color: (this.isEnabled ? Colors.white : Colors.black),
                fontWeight: FontWeight.w500,
                fontFamily: 'Raleway',
              ),
            )
          ],
        ),
      ),
    );
  }
}
