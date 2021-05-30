import 'package:infodatos/app/widgets/default_button_widget.dart';
import 'midias_involved_dto.dart';
import 'package:flutter/material.dart';

class MidiasInvolvedTableWidget extends StatefulWidget {
  final List<MidiasInvolvedDto> relateds;
  final Function onSelectedItem;

  const MidiasInvolvedTableWidget({
    Key key,
    this.relateds,
    this.onSelectedItem,
  }) : super(key: key);

  @override
  _MidiasInvolvedTablesWidgetState createState() =>
      _MidiasInvolvedTablesWidgetState();
}

class _MidiasInvolvedTablesWidgetState
    extends State<MidiasInvolvedTableWidget> {
  String _nome = "";
  MidiasInvolvedDto _involvedDto;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.end,
      children: [
        Row(
          children: [
            Expanded(
              child: DataTable(
                headingRowColor:
                    MaterialStateColor.resolveWith((states) => Colors.indigo),
                columns: <DataColumn>[
                  DataColumn(
                    label: Text(
                      'NOME/RAZÃO SOCIAL',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'CPF/CNPJ',
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
                rows: this._populationTable(),
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
            isEnabled: this._involvedDto != null,
            onPressed: () {
              this.widget.onSelectedItem(
                    this._involvedDto,
                  ); //qual a finalidade da função onSelectedItem
            },
          ),
        ),
      ],
    );
  }

  List<DataRow> _populationTable() {
    List<DataRow> items = [];
    for (var idx = 0; idx < this.widget.relateds.length; idx++) {
      var relateds = this.widget.relateds[idx];
      items.add(
        DataRow(
          cells: <DataCell>[
            DataCell(
              Text(relateds.nome),
            ),
            DataCell(
              Text(relateds.cpf),
            ),
            DataCell(Radio(
              value: relateds.nome,
              groupValue: this._nome,
              onChanged: (String value) {
                setState(
                  () {
                    this._nome = value;
                    this._involvedDto = relateds;
                  },
                );
              },
            ))
          ],
        ),
      );
    }
    return items;
  }
}
