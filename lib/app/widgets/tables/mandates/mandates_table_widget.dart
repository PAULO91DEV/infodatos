import 'package:flutter/material.dart';
import 'mandates_dto.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';

class MandatesTableWidget extends StatefulWidget {
  final List<MandatesDto> mandates;
  final VoidCallback onButtonClicked;

  MandatesTableWidget(
      {Key key, @required this.mandates, @required this.onButtonClicked})
      : super(key: key);

  @override
  _MandatesTableWidgetState createState() => _MandatesTableWidgetState();
}

class _MandatesTableWidgetState extends State<MandatesTableWidget> {
  MandatesDto _mandates;
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              child: DataTable(
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.indigo),
                columns: const <DataColumn>[
                  DataColumn(
                    label: Text(
                      'CARGO',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'ORGÃO',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'NOMEAÇÃO',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'EXONERAÇÃO',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'DATA FIM PEP',
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
          width: 250,
          child: DefaultButtonWidget(
            text: "Consultar Relacionados",
            icon: Icon(Icons.search),
            onPressed: () {
              this.widget.onButtonClicked();
            },
          ),
        ),
      ],
    );
  }

  List<DataRow> _populateTable() {
    List<DataRow> items = [];
    for (var idx = 0; idx < this.widget.mandates.length; idx++) {
      var mandates = this.widget.mandates[idx];
      items.add(DataRow(
        cells: <DataCell>[
          DataCell(Text(mandates.office)),
          DataCell(Text(mandates.organ)),
          DataCell(Text(mandates.appointment)),
          DataCell(Text(mandates.exoneration)),
          DataCell(Text(mandates.date)),
        ],
      ));
    }
    return items;
  }
}
