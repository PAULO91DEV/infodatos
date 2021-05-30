import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/commons/helpers.dart';
import 'package:infodatos/app/components/search/pep/pep_search_person_data_widget/pep_search_person_data_widget_controller.dart';
import 'package:infodatos/app/components/search/pep/pep_search_related_widget/pep_search_related_widget.dart';
import 'package:infodatos/app/components/search/widgets/display_widget_by_state.dart';
import 'package:infodatos/app/widgets/tables/mandates/mandates_dto.dart';
import 'package:infodatos/app/widgets/tables/mandates/mandates_table_widget.dart';
import 'package:infodatos/domain/usecases/pep/get_pep_full_by_document_usecase.dart';

class PepSearchPersonDataWidget extends StatefulWidget {
  final double width;
  final String document;
  PepSearchPersonDataWidget({
    Key key,
    @required this.document,
    this.width,
  }) : super(key: key);

  @override
  _PepSearchPersonDataWidgetState createState() =>
      _PepSearchPersonDataWidgetState();
}

class _PepSearchPersonDataWidgetState extends State<PepSearchPersonDataWidget> {
  PepSearchPersonDataWidgetController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = PepSearchPersonDataWidgetController(
      Modular.get<GetPepFullByDocumentUseCase>(),
    );
  }

  @override
  Widget build(BuildContext context) {
    print(
        "#### _PepSearchPersonDataComponentState => document = ${this.widget.document}");
    this._controller.search(this.widget.document);
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Observer(
          builder: (_) {
            return DisplayWidgetByState(
              width: this.widget.width,
              state: this._controller.state,
              child: this._createPersonData(),
            );
          },
        ),
        Observer(
          builder: (context) {
            if (this._controller.isShowRelated) {
              return PepSearchRelatedWidget(
                  width: this.widget.width,
                  document: this
                          ._controller
                          .pepFullDocumentDataResultEntity
                          ?.cpfCnpj ??
                      "");
            }
            return Container();
          },
        ),
      ],
    );
  }

  Widget _createPersonData() {
    return Padding(
      padding: const EdgeInsets.only(top: 32),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          SizedBox(
            height: 24,
          ),
          Row(
            children: [
              Expanded(
                flex: 1,
                child: createField(
                    "Data de Nascimento",
                    getDateFromIsoDate(this
                        ._controller
                        .getPepFullByDocumentResponseEntity
                        ?.birthDate)),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                flex: 3,
                child: createField(
                    "Nome",
                    this._controller.getPepFullByDocumentResponseEntity?.name ??
                        ""),
              ),
              SizedBox(
                width: 24,
              ),
              Expanded(
                flex: 1,
                child: createField(
                    "CPF",
                    this
                            ._controller
                            .getPepFullByDocumentResponseEntity
                            ?.identityDocument ??
                        ""),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          this._createTableMandates(),
        ],
      ),
    );
  }

  Widget _createTableMandates() {
    List<MandatesDto> mandates = [];
    this
        ._controller
        .getPepFullByDocumentResponseEntity
        ?.mandates
        ?.forEach((element) {
      mandates.add(MandatesDto(
          element.mandate,
          element.governmentAgency,
          getDateFromIsoDate(element.appointmentDate),
          getDateFromIsoDate(element.exonerationDate),
          getDateFromIsoDate(element.endDate)));
    });
    return MandatesTableWidget(
        mandates: mandates,
        onButtonClicked: () {
          this._controller.setShowRelated(true);
        });
  }
}
