import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/components/search/pep/pep_search_related_widget/pep_search_related_widget_controller.dart';
import 'package:infodatos/app/components/search/widgets/display_widget_by_state.dart';
import 'package:infodatos/app/widgets/tables/pep_related/pep_related_table_widget.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_rel_full_by_document_usecase.dart';

class PepSearchRelatedWidget extends StatefulWidget {
  final double width;
  final String document;
  PepSearchRelatedWidget({
    Key key,
    @required this.document,
    @required this.width,
  }) : super(key: key);

  @override
  _PepSearchRelatedWidgetState createState() => _PepSearchRelatedWidgetState();
}

class _PepSearchRelatedWidgetState extends State<PepSearchRelatedWidget> {
  PepSearchRelatedWidgetController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = PepSearchRelatedWidgetController(
      Modular.get<GetPepRelFullByDocumentUseCase>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    this._controller.search(this.widget.document);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Observer(
          builder: (_) {
            return DisplayWidgetByState(
              width: this.widget.width,
              state: this._controller.state,
              child: this._createTable(),
            );
          },
        ),
        Observer(
          builder: (context) {
            // if (this._controller.isShowRelated) {
            //   return Container();
            // }
            return Container();
          },
        ),
      ],
    );
  }

  Widget _createTable() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        SizedBox(height: 24),
        PepRelatedTableWidget(
            relateds: this._controller.personsRelated,
            onSelectedItem: (item) {})
      ],
    );
  }
}
