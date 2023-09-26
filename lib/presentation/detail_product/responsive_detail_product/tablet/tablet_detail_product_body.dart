import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/tablet/widgets/detail_product_tablet_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/mobile/widgets/banner_subscribe_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/mobile/widgets/footer_page.dart';

class TabletDetailProductBody extends StatelessWidget {
  const TabletDetailProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DetailProductTabletPage(),
              Transform.translate(
                  offset: const Offset(0, -134),
                  child: const BannerSubscribePage()),
              Transform.translate(
                  offset: const Offset(0, -100), child: const FooterPage()),
            ],
          ),
        ),
      ),
    );
  }
}
