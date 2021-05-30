import 'package:cpf_cnpj_validator/cnpj_validator.dart';
import 'package:flutter/material.dart';
import 'package:infodatos/app/commons/helpers.dart';
import 'package:infodatos/app/components/search/pep/pep_search_company_data_widget/pep_search_company_data_widget.dart';
import 'package:infodatos/app/components/search/pep/pep_search_person_data_widget/pep_search_person_data_widget.dart';

class PepSearchComponent extends StatefulWidget {
  final double width;
  final String document;
  PepSearchComponent({
    Key key,
    @required this.width,
    @required this.document,
  }) : super(key: key);

  @override
  _PepSearchComponentState createState() => _PepSearchComponentState();
}

class _PepSearchComponentState extends State<PepSearchComponent> {
  @override
  Widget build(BuildContext context) {
    return displayByConditionWidget(
      childPositive: PepSearchCompanyDataWidget(
        width: this.widget.width,
        document: this.widget.document,
      ),
      childNegative: PepSearchPersonDataWidget(
        width: this.widget.width,
        document: this.widget.document,
      ),
      condition: CNPJValidator.isValid(this.widget.document),
    );
  }
}
