import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RoutePage extends StatelessWidget {
  final Widget mobilePage;
  final Widget generalPage;

  const RoutePage({
    Key key,
    @required this.mobilePage,
    @required this.generalPage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInformation) {
        switch (sizingInformation.deviceScreenType) {
          case DeviceScreenType.mobile:
            return this.mobilePage;
          default:
            return this.generalPage;
        }
      },
    );
  }
}
