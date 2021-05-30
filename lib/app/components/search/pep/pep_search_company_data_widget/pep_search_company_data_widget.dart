import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/commons/helpers.dart';
import 'package:infodatos/app/components/search/pep/pep_search_company_data_widget/pep_search_company_data_widget_controller.dart';
import 'package:infodatos/app/components/search/widgets/display_widget_by_state.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';

class PepSearchCompanyDataWidget extends StatefulWidget {
  final double width;
  final String document;
  PepSearchCompanyDataWidget({
    Key key,
    @required this.width,
    @required this.document,
  }) : super(key: key);

  @override
  _PepSearchCompanyDataWidgetState createState() =>
      _PepSearchCompanyDataWidgetState();
}

class _PepSearchCompanyDataWidgetState
    extends State<PepSearchCompanyDataWidget> {
  PepSearchCompanyDataWidgetController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = PepSearchCompanyDataWidgetController();
  }

  @override
  Widget build(BuildContext context) {
    this._controller.search(this.widget.document);
    return Container(
      width: this.widget.width,
      child: Observer(
        builder: (_) {
          return DisplayWidgetByState(
            width: this.widget.width,
            state: this._controller.state,
            child: this._createCompanyData(),
          );
        },
      ),
    );
  }

  Widget _createCompanyData() {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Row(
          children: [
            Expanded(
              flex: 1,
              child: createField(kTextLabelCNPJ, "27.516.314/0001-06"),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              flex: 3,
              child:
                  createField(kTextLabelCompanyName, "Bolsonaro Digital LTDA"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: createField(
                  kTextLabelSituationReceitaFederal, "ATIVA - 10/04/2017"),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              flex: 3,
              child: createField(
                  kTextLabelAddress, "Rua Dona Maria, 71, APT 503 BLC 01"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Row(
          children: [
            Expanded(
              flex: 1,
              child: createField(kTextLabelJointStock, "R\$ 1.000,00"),
            ),
            SizedBox(
              width: 24,
            ),
            Expanded(
              flex: 3,
              child: createField(kTextLabelCityState, "RIO DE JANEIRO/RJ"),
            ),
          ],
        ),
        SizedBox(
          height: 24,
        ),
        Align(
          alignment: Alignment.centerRight,
          child: Container(
            width: 150,
            child: DefaultButtonWidget(
              text: kTextLabelConsult,
              icon: Icon(Icons.search),
              isEnabled: true,
              onPressed: () {},
            ),
          ),
        ),
      ],
    );
  }
}
