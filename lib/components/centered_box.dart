import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class CenteredBox extends StatelessWidget {
  final Widget child;

  CenteredBox({this.child});

  @override
  Widget build(BuildContext context) {
    return ResponsiveBuilder(
      builder: (context, sizingInfo) => Container(
        padding: EdgeInsets.symmetric(
          vertical: sizingInfo.isMobile ? 20 : 200,
          horizontal: sizingInfo.isMobile ? 30 : 70,
        ),
        alignment: Alignment.center,
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 400,
            maxWidth: 1200,
          ),
          child: child,
        ),
      ),
    );
  }
}
