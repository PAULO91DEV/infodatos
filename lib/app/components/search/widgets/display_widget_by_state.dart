import 'package:flutter/material.dart';
import 'package:infodatos/app/components/search/pep/commons/pep_state.dart';
import 'package:infodatos/app/components/search/widgets/load_search_widget.dart';
import 'package:infodatos/app/components/search/widgets/not_found_data_widget.dart';
import 'package:infodatos/app/components/search/widgets/not_sign_contract_widget.dart';
import 'package:infodatos/app/components/search/widgets/without_balance_widget.dart';

class DisplayWidgetByState extends StatelessWidget {
  final PepState state;
  final Widget child;
  final double width;
  const DisplayWidgetByState({
    Key key,
    @required this.state,
    @required this.child,
    @required this.width,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (this.state.isShowLoading) {
      return LoadSearchWidget(
        width: this.width,
      );
    }

    if (this.state.isShowEmptyData) {
      return NotFoundDataWidget(
        width: this.width,
      );
    }

    if (this.state.isShowWithoutBalance) {
      return WithoutBalanceWidget();
    }

    if (this.state.isShowWithoutContract) {
      return NotSignContractWidget();
    }

    if (this.state.isShowData) {
      return child;
    }

    return Container();
  }
}
