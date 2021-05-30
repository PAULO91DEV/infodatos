import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';

import 'pep_related_dto.dart';
import 'package:flutter/material.dart';

class PepRelatedTableWidget extends StatefulWidget {
  final List<PepRelatedDto> relateds;
  final Function onSelectedItem;

  PepRelatedTableWidget(
      {Key key, @required this.relateds, @required this.onSelectedItem})
      : super(key: key);

  @override
  _PepRelatedTableWidgetState createState() => _PepRelatedTableWidgetState();
}

class _PepRelatedTableWidgetState extends State<PepRelatedTableWidget> {
  String _nome = "";
  PepRelatedDto _related;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Text(
              "PEP(s) Relacionado(s)",
              style: TextStyle(
                fontSize: 24,
                color: kColor3F739B,
              ),
            ),
          ],
        ),
        SizedBox(
          height: 8,
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
                      'VINCULO ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'NOME',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'TIPO',
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
            text: "Consultar",
            icon: Icon(Icons.search),
            isEnabled: this._related != null,
            onPressed: () {
              this.widget.onSelectedItem(this._related);
            },
          ),
        ),
      ],
    );
  }

  List<DataRow> _populateTable() {
    List<DataRow> items = [];
    for (var idx = 0; idx < this.widget.relateds.length; idx++) {
      var related = this.widget.relateds[idx];
      items.add(DataRow(
        cells: <DataCell>[
          DataCell(Text(related.bond)),
          DataCell(Text(related.name)),
          DataCell(Text(related.type)),
          DataCell(
            Radio(
              value: related.name,
              groupValue: this._nome,
              onChanged: (String value) {
                setState(
                  () {
                    this._nome = value;
                    this._related = related;
                  },
                );
              },
            ),
          ),
        ],
      ));
    }
    return items;
  }
}
