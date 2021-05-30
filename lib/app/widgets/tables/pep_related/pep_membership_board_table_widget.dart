import 'package:flutter/material.dart';
import 'pep_membership_board_dto.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';


class PepMembershipBoardTableWidget extends StatefulWidget {
  final List<PepMembershipBoardDto> membership;
  final Function onSelectedItem;

  PepMembershipBoardTableWidget(
      {Key key, @required this.membership, @required this.onSelectedItem})
      : super(key: key);

  @override
  _PepMembershipBoardTableWidgetState createState() => _PepMembershipBoardTableWidgetState();
}

class _PepMembershipBoardTableWidgetState extends State<PepMembershipBoardTableWidget> {
  String _cpf = "";
  PepMembershipBoardDto _membership;
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
                      'CPF / CNPJ',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'NOME SÓCIO',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'QUALIFICAÇÃO SÓCIO',
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
            isEnabled: this._membership != null,
            onPressed: () {
              this.widget.onSelectedItem(this._membership);
            },
          ),
        ),
      ],
    );
  }
  List<DataRow> _populateTable() {
    List<DataRow> items = [];
    for (var idx = 0; idx < this.widget.membership.length; idx++) {
      var membership = this.widget.membership[idx];
      items.add(DataRow(
        cells: <DataCell>[
          DataCell(Text(membership.cpf)),
          DataCell(Text(membership.name)),
          DataCell(Text(membership.qualification)),
          DataCell(Text(membership.type)),
          DataCell(
            Radio(
                value: membership.cpf,
                groupValue: this._cpf,
                onChanged: (String value) {
                  setState(() {
                    this._cpf = value;
                    this._membership = membership;
                  });
                }),
          ),
        ],
      ));
    }
    return items;
  }
}