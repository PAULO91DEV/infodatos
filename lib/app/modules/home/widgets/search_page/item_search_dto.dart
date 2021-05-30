import 'package:infodatos/app/commons/enums.dart';

class ItemSearchDto {
  final int order;
  final String title;
  final String tooltip;
  final SearchType searchType;
  final bool isVisible;
  final bool isEnabled;
  bool isChecked;

  ItemSearchDto({
    this.order = 0,
    this.title,
    this.tooltip,
    this.isChecked = false,
    this.searchType,
    this.isVisible = true,
    this.isEnabled = true,
  });
}
