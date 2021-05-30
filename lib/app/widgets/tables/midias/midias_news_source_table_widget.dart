import 'package:flutter/material.dart';
import 'package:infodatos/app/widgets/tables/midias/midias_news_source_dto.dart';

class MidiasInvolvedTableWidget extends StatefulWidget {
  final List<MidiasNewsSourcedDto> newsSource;
  final Function onSelectedItem;

  const MidiasInvolvedTableWidget({
    Key key,
    this.newsSource,
    this.onSelectedItem,
  }) : super(key: key);

  @override
  _MidiasInvolvedTablesWidgetState createState() =>
      _MidiasInvolvedTablesWidgetState();
}

class _MidiasInvolvedTablesWidgetState
    extends State<MidiasInvolvedTableWidget> {
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
                      'OCORRÊNCIA',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                  DataColumn(
                    label: Text(
                      'LINK',
                      style: TextStyle(fontStyle: FontStyle.italic),
                    ),
                  ),
                ],
                rows: this._populationTable(),
              ),
            ),
          ],
        ),
      ],
    );
  }

  List<DataRow> _populationTable() {
    List<DataRow> items = [];
    for (var idx = 0; idx < this.widget.newsSource.length; idx++) {
      var source = this.widget.newsSource[idx];
      items.add(
        DataRow(
          cells: <DataCell>[
            DataCell(
              Text(source.occurrence),
            ),
            DataCell(
              Text(source.link),
            ),
          ],
        ),
      );
    }
    return items;
  }
}
