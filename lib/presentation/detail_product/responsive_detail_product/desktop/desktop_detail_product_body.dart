import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/desktop/widgets/detail_product_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/banner_subscribe_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/footer_desktop_page.dart';

class DesktopDetailProductBody extends StatelessWidget {
  const DesktopDetailProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DetailProductDesktopPage(),
              Transform.translate(
                  offset: const Offset(0, -100),
                  child: const BannerSubscribeDesktopPage()),
              Transform.translate(
                  offset: const Offset(0, -70),
                  child: const FooterDesktopPage()),
            ],
          ),
        ),
      ),
    );
  }
}
