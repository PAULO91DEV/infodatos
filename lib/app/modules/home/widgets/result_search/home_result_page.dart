import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:infodatos/app/commons/enums.dart';
import 'package:infodatos/app/commons/helpers.dart';
import 'package:infodatos/app/components/search/homonym/search_by_homonym_component.dart';
import 'package:infodatos/app/components/search/pep/pep_search_component.dart';
import 'package:infodatos/app/modules/home/home_controller.dart';
import 'package:infodatos/app/modules/home/widgets/result_search/home_result_page_controller.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/home_search_page.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:infodatos/app/widgets/default_button_widget.dart';

class HomeResultSearchPage extends StatefulWidget {
  final String name;
  final String document;
  final List<ItemSearchDto> searchItems;
  HomeResultSearchPage({
    Key key,
    @required this.searchItems,
    this.name,
    this.document,
  }) : super(key: key);

  @override
  _HomeResultSearchPageState createState() => _HomeResultSearchPageState();
}

class _HomeResultSearchPageState extends State<HomeResultSearchPage> {
  HomeResultPageController _controller;
  @override
  void initState() {
    super.initState();
    this._controller = HomeResultPageController();
    this._controller.search(this.widget.document, this.widget.name);
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(24.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return SingleChildScrollView(
            child: this._createLayout(constraints),
          );
        },
      ),
    );
  }

  Widget _createLayout(BoxConstraints constraints) {
    print("#### HomeResultPage::_createLayout => constraints = $constraints");
    return Container(
      width: constraints.biggest.width,
      child: Row(
        children: [
          Container(
            width: constraints.biggest.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                _makeTopSearch(constraints),
                SizedBox(
                  height: 24,
                ),
                Container(
                  child: Observer(
                    builder: (context) {
                      return displayByConditionWidget(
                        childPositive: _makeSearchByName(constraints),
                        childNegative: Container(),
                        condition: this._controller.isSearchByName,
                      );
                    },
                  ),
                ),
                Observer(
                  builder: (_) {
                    return displayByConditionWidget(
                      childPositive: _makeProductsCall(constraints),
                      childNegative: Container(),
                      condition: this._controller.document.isNotNullAndEmpty(),
                    );
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget _makeSearchByName(BoxConstraints constraints) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Escolha um item",
          style: GoogleFonts.raleway(
            fontSize: 24,
            fontWeight: FontWeight.w700,
          ),
        ),
        SizedBox(
          height: 16,
        ),
        SearchByHomonymComponent(
          name: this.widget.name,
          searchItems: this.widget.searchItems,
          onResult: (document) {
            this._controller.searchByDocument(document);
          },
        ),
      ],
    );
  }

  RichText _getTextFilter() {
    var text;
    var value;
    if (this.widget.name != null && this.widget.name.isNotEmpty) {
      text = "Nome: ";
      value = this.widget.name;
    } else {
      text = "CPF/CNPJ: ";
      value = this.widget.document;
    }
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: text,
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.normal,
        ),
        children: [
          TextSpan(
            text: "  $value",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  String _getProducts() {
    var products = "";
    for (var idx = 0; idx < this.widget.searchItems.length; idx++) {
      var item = this.widget.searchItems[idx];
      if (idx > 0) {
        products += ", ";
      }
      products += item.title;
    }
    return products;
  }

  Widget _getTextProducts() {
    return RichText(
      maxLines: 2,
      overflow: TextOverflow.ellipsis,
      text: TextSpan(
        text: "Produtos: ",
        style: GoogleFonts.raleway(
          fontWeight: FontWeight.normal,
        ),
        children: [
          TextSpan(
            text: "  ${this._getProducts()}",
            style: GoogleFonts.raleway(
              fontWeight: FontWeight.w700,
              fontSize: 18,
            ),
          ),
        ],
      ),
    );
  }

  Widget _makeTopSearch(BoxConstraints constraints) {
    var boxFilterSize = constraints.biggest.width * 0.40;
    return Container(
      constraints: BoxConstraints(
          minWidth: 300, maxWidth: (boxFilterSize > 300 ? boxFilterSize : 300)),
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text("Pesquisa feito por: "),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(child: _getTextFilter()),
            ],
          ),
          SizedBox(
            height: 8,
          ),
          Row(
            children: [
              Expanded(
                child: _getTextProducts(),
              ),
            ],
          ),
          SizedBox(
            height: 16,
          ),
          ConstrainedBox(
            constraints: BoxConstraints(minWidth: 150, maxWidth: 180),
            child: DefaultButtonWidget(
              text: "Limpar Pesquisa",
              icon: Icon(Icons.close),
              onPressed: () {
                Modular.get<HomeController>().showBodyWidget(HomeSearchPage());
              },
            ),
          ),
        ],
      ),
    );
  }

  Widget _makeProductsCall(BoxConstraints constraints) {
    List<Widget> products = [];
    for (var idx = 0; idx < this.widget.searchItems.length; idx++) {
      var item = this.widget.searchItems[idx];
      products.add(SizedBox(
        height: 24,
      ));
      products.add(Text(
        item.title,
        style: GoogleFonts.raleway(
          fontSize: 24,
          fontWeight: FontWeight.w700,
        ),
      ));
      products.add(SizedBox(
        height: 16,
      ));
      products.add(factoryProductWidget(item, constraints));
      products.add(SizedBox(
        height: 24,
      ));
    }
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: products,
    );
  }

  Widget factoryProductWidget(ItemSearchDto item, BoxConstraints constraints) {
    var widget;
    switch (item.searchType) {
      case SearchType.PEP:
        widget = PepSearchComponent(
          width: constraints.biggest.width,
          document: this._controller.document,
        );
        break;
      case SearchType.Media:
        widget = Container();
        break;
      default:
        widget = Container(
          height: 300,
        );
        break;
    }
    return Container(
      width: constraints.biggest.width,
      padding: EdgeInsets.all(24),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(16),
      ),
      child: widget,
    );
  }
}
