import 'package:flutter/material.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/desktop/desktop_detail_product_body.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/detail_product_layout.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/mobile/mobile_detail_product_body.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/tablet/tablet_detail_product_body.dart';

class DetailProductPage extends StatefulWidget {
  const DetailProductPage({super.key});

  @override
  State<DetailProductPage> createState() => _DetailProductState();
}

class _DetailProductState extends State<DetailProductPage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: DetailProductLayout(
        mobileBody: MobileDetailProductBody(),
        tabletBody: TabletDetailProductBody(),
        desktopBody: DesktopDetailProductBody(),
      ),
    );
  }
}
