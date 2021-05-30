import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';

import 'homonym_dto.dart';
import 'package:flutter/material.dart';

class HomonymTableWidget extends StatefulWidget {
  final List<HomonymDto> homonyms;
  final String cpf;
  final Function onSelectedItem;
  final double width;

  HomonymTableWidget({
    Key key,
    @required this.homonyms,
    @required this.onSelectedItem,
    @required this.width,
    this.cpf,
  }) : super(key: key);

  @override
  _HomonymTableWidgetState createState() => _HomonymTableWidgetState();
}

class _HomonymTableWidgetState extends State<HomonymTableWidget> {
  String _cpf = "";
  HomonymDto _homonym;

  @override
  void initState() {
    super.initState();
    setState(() {
      this._cpf = this.widget.cpf;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: this.widget.width,
              child: DataTable(
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.indigo),
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'NOME',
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
                      'SELECIONE',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: this._populateTable(),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Container(
          width: 150,
          child: DefaultButtonWidget(
            text: kTextLabelConsult,
            icon: Icon(Icons.search),
            isEnabled: this._homonym != null,
            onPressed: () {
              this.widget.onSelectedItem(this._homonym);
            },
          ),
        ),
      ],
    );
  }

  List<DataRow> _populateTable() {
    List<DataRow> items = [];
    for (var idx = 0; idx < this.widget.homonyms.length; idx++) {
      var homonym = this.widget.homonyms[idx];
      items.add(DataRow(
        cells: <DataCell>[
          DataCell(Text(homonym.name)),
          DataCell(Text(homonym.cpfMasked)),
          DataCell(
            Radio(
                value: homonym.cpf,
                groupValue: this._cpf,
                onChanged: (String value) {
                  setState(() {
                    this._cpf = value;
                    this._homonym = homonym;
                  });
                }),
          ),
        ],
      ));
    }
    return items;
  }
}
