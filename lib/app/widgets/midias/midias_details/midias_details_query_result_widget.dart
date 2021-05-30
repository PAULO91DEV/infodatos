import 'package:flutter/material.dart';

class ParentalBond extends StatefulWidget {
  final String content;
  ParentalBond({
    Key key,
    this.content,
  }) : super(key: key);

  @override
  _ParentalBondState createState() => _ParentalBondState();
}

class _ParentalBondState extends State<ParentalBond> {
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24.0),
                child: Text(
                  'Resumo de Notícias',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.5, color: Colors.indigo),
                ),
              ),
            ),
          ],
        ),
        Container(
          child: Expanded(
            child: Text(
              this.widget.content,
              style: TextStyle(fontStyle: FontStyle.italic),
            ),
          ),
        ),
      ],
    );
  }
}
