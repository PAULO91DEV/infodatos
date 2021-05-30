import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:infodatos/app/components/search/homonym/search_by_homonym_component_controller.dart';
import 'package:infodatos/app/components/search/widgets/display_widget_by_state.dart';
import 'package:infodatos/app/modules/home/widgets/search_page/item_search_dto.dart';
import 'package:infodatos/app/widgets/tables/homonym/homonym_dto.dart';
import 'package:infodatos/app/widgets/tables/homonym/homonym_table_widget.dart';
import 'package:infodatos/domain/usecases/person/get_person_by_name_usecase.dart';

class SearchByHomonymComponent extends StatefulWidget {
  final String name;
  final List<ItemSearchDto> searchItems;
  final Function onResult;
  SearchByHomonymComponent({
    Key key,
    @required this.name,
    @required this.onResult,
    this.searchItems,
  }) : super(key: key);

  @override
  _SearchByHomonymComponentState createState() =>
      _SearchByHomonymComponentState();
}

class _SearchByHomonymComponentState extends State<SearchByHomonymComponent> {
  SearchByHomonymComponentController _controller;

  @override
  void initState() {
    super.initState();
    this._controller = SearchByHomonymComponentController(
        Modular.get<GetPersonByNameUseCase>());
    this._controller.search(this.widget.name, this.widget.searchItems);
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        print(
            "#### SearchByHomonymComponent::build => constraints = $constraints");
        return Container(
          width: constraints.maxWidth,
          padding: EdgeInsets.all(24),
          decoration: BoxDecoration(
            color: Colors.grey[200],
            borderRadius: BorderRadius.circular(16),
          ),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Observer(builder: (_) {
                return DisplayWidgetByState(
                    state: this._controller.state,
                    width: constraints.biggest.width - 48,
                    child: HomonymTableWidget(
                        width: constraints.biggest.width - 48,
                        homonyms: this._controller.homonyms,
                        onSelectedItem: (HomonymDto item) {
                          this.widget.onResult(item.cpf);
                        }));
              }),
            ],
          ),
        );
      },
    );
  }
}
