import 'package:cnpj_cpf_formatter/cnpj_cpf_formatter.dart';
import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:infodatos/app/commons/constants.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/home_search_page_controller.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';
import 'package:infodatos/app/widgets/item_research_widget.dart';

class HomeSearchPage extends StatefulWidget {
  HomeSearchPage({Key key}) : super(key: key);

  @override
  _HomeSearchPageState createState() => _HomeSearchPageState();
}

class _HomeSearchPageState extends State<HomeSearchPage> {
  FocusNode _focusNodeName;
  FocusNode _focusNodeDocument;
  HomeSearchPageController _controller;
  TextEditingController _nameEditingController;
  TextEditingController _documentEditingController;

  @override
  void initState() {
    super.initState();
    this._controller = HomeSearchPageController();
    this._controller.init();
    this._focusNodeName = FocusNode();
    this._focusNodeDocument = FocusNode();
    this._focusNodeName.addListener(() {
      if (this._focusNodeName.hasFocus) {
        this._clearFields();
      }
    });
    this._focusNodeDocument.addListener(() {
      if (this._focusNodeDocument.hasFocus) {
        this._clearFields();
      }
    });
    this._nameEditingController = TextEditingController();
    this._documentEditingController = TextEditingController();
  }

  @override
  void dispose() {
    this._focusNodeName.dispose();
    this._focusNodeDocument.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return this._pageChildren(constraints);
      },
    );
  }

  void _clearFields() {
    this._nameEditingController.clear();
    this._documentEditingController.clear();
    this._controller.setName(null);
    this._controller.setDocument(null);
  }

  Widget _pageChildren(BoxConstraints constraints) {
    var cardSize = constraints.biggest.width * 0.90;
    return Container(
      padding: EdgeInsets.only(top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            width: cardSize,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(10.0)),
              color: Colors.grey[100],
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(30.0),
                  child: Text(
                    'Escolha o Tipo de Consulta:',
                    style: TextStyle(
                        fontSize: 17.5,
                        color: Colors.indigo,
                        fontFamily: 'Raleway'),
                  ),
                ),
                Container(
                  child: Wrap(
                    runAlignment: WrapAlignment.start,
                    spacing: 10.0, // gap between adjacent chips
                    runSpacing: 8.0, // gap between lines
                    children: [
                      Container(
                        width: 300,
                        child: TextFormField(
                          style: TextStyle(fontSize: 14.0, color: Colors.black),
                          decoration: InputDecoration(
                            filled: true,
                            fillColor: Colors.white,
                            labelText: "CPF / CNPJ",
                            hintText: "Digite o Cpf ou Cnpj",
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10.0),
                              borderSide: BorderSide(
                                color: Colors.indigo,
                              ),
                            ),
                            contentPadding: const EdgeInsets.only(
                                left: 14.0, bottom: 6.0, top: 8.0),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(color: Colors.green),
                              borderRadius: BorderRadius.circular(10.0),
                            ),
                          ),
                          focusNode: this._focusNodeDocument,
                          controller: this._documentEditingController,
                          inputFormatters: [
                            CnpjCpfFormatter(
                              eDocumentType: EDocumentType.BOTH,
                            )
                          ],
                          onChanged: (value) {
                            this._controller.setDocument(value);
                          },
                        ),
                      ),
                      ConstrainedBox(
                        constraints: BoxConstraints(minWidth: 300),
                        child: Container(
                          width: (cardSize * 0.90) - 310,
                          child: TextFormField(
                            style:
                                TextStyle(fontSize: 14.0, color: Colors.black),
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              labelText: "Nome / Razão Social",
                              hintText: "Digite um Nome ou Razão Social",
                              enabledBorder: OutlineInputBorder(
                                borderRadius: BorderRadius.circular(10.0),
                                borderSide: BorderSide(
                                  color: Colors.indigo,
                                ),
                              ),
                              contentPadding: const EdgeInsets.only(
                                  left: 14.0, bottom: 6.0, top: 8.0),
                              focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.green),
                                borderRadius: BorderRadius.circular(10.0),
                              ),
                            ),
                            focusNode: this._focusNodeName,
                            controller: this._nameEditingController,
                            onChanged: (value) {
                              this._controller.setName(value);
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 34,
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        width: cardSize * 0.90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.all(Radius.circular(8.0)),
                          color: Colors.grey[300],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(4.0),
                          child: Container(
                            child: Text('Produtos:',
                                style: TextStyle(
                                    fontSize: 17.5,
                                    color: Colors.indigo,
                                    fontFamily: 'Raleway'),
                                textAlign: TextAlign.center),
                          ),
                        ),
                      ),
                      Container(
                        width: cardSize * 0.90,
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.white),
                          borderRadius: BorderRadius.only(
                              topLeft: Radius.circular(10.0),
                              topRight: Radius.circular(10.0),
                              bottomLeft: Radius.circular(10.0),
                              bottomRight: Radius.circular(10.0)),
                          color: Colors.grey[200],
                        ),
                        child: Padding(
                          padding: const EdgeInsets.all(8.0),
                          child: Wrap(
                            spacing: 8.0, // gap between adjacent chips
                            runSpacing: 5.0, // gap between lines
                            children: this._createListSearchitems(),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 25,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Observer(
                      builder: (_) {
                        print(
                            "####S DefaultButton => ${this._controller.isSearchButtonEnabled}");
                        return SizedBox(
                          width: 150,
                          child: DefaultButtonWidget(
                            text: kTextSearch,
                            icon: Icon(
                              Icons.search,
                              color: Colors.white,
                            ),
                            isEnabled: this._controller.isSearchButtonEnabled,
                            onPressed: () {
                              this._controller.onSearchButtonClicked();
                            },
                          ),
                        );
                      },
                    ),
                    SizedBox(
                      width: 70,
                    ),
                  ],
                ),
                SizedBox(
                  height: 25,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  List<Widget> _createListSearchitems() {
    List<Widget> items = [];
    for (var idx = 0; idx < this._controller.searchItems.length; idx++) {
      var item = this._controller.searchItems[idx];
      if (item.isVisible) {
        items.add(
          ItemResearchWidget(
              text: item.title,
              tooltip: item.tooltip,
              isChecked: item.isChecked,
              isEnabled: item.isEnabled,
              onChanged: (value) {
                print(
                    "####S ItemResearchWidget => onItemSearchClicked, value => $value");
                this._controller.onItemSearchClicked(item);
              }),
        );
      }
    }
    return items;
  }
}
