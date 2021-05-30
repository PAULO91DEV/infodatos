import 'pep_parental_bond_dto.dart';
import 'package:flutter/material.dart';

class ParentalBond extends StatefulWidget {
  final List<PepParentalBondDto> relateds;
  final Function onSelectedItem;
  ParentalBond(
      {Key key, @required this.relateds, @required this.onSelectedItem})
      : super(key: key);

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
              child: Text('PEP(s) Relacioanados - Vínculo Parental',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17.5, color: Colors.indigo)),
            )),
          ],
        ),
        Row(
          children: [
            Expanded(
              child: DataTable(
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.indigo),
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'NOME ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'CPF',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'TIPO DE RELACIONAMENTO',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: [],
              ),
            ),
          ],
        ),
      ],
    );
  }
}
