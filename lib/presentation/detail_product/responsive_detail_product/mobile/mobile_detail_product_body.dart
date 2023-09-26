import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/mobile/widgets/detail_product_mobile_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/mobile/widgets/banner_subscribe_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/mobile/widgets/footer_page.dart';

class MobileDetailProductBody extends StatelessWidget {
  const MobileDetailProductBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const DetailProductMobilePage(),
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
