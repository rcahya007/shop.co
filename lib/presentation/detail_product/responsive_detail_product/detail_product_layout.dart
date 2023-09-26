import 'package:flutter/material.dart';

import 'package:shop_co/common/dimensions.dart';

class DetailProductLayout extends StatelessWidget {
  final Widget mobileBody;
  final Widget tabletBody;
  final Widget desktopBody;

  const DetailProductLayout({
    Key? key,
    required this.mobileBody,
    required this.tabletBody,
    required this.desktopBody,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        if (constraints.maxWidth < mobileWidth) {
          return mobileBody;
        } else if (constraints.maxWidth < tabletWidth) {
          return tabletBody;
        } else {
          return desktopBody;
        }
      },
    );
  }
}
