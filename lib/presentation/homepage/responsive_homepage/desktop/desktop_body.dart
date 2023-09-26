import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';

import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/banner_subscribe_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/dress_style_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/footer_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/home_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/new_arrivals_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/review_customer_desktop_page.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/widgets/top_selling_desktop_page.dart';

class MyDesktopBody extends StatelessWidget {
  const MyDesktopBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomeDesktopPage(),
              const NewArrivalsDesktopPage(),
              const TopSellingDesktopPage(),
              const DressStyleDesktopPage(),
              const ReviewCustomerDesktopPage(),
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
