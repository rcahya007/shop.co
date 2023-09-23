import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/banner_disc.dart';
import 'package:shop_co/common/widgets/navbar.dart';
import 'package:shop_co/responsive/tablet/widgets/banner_subscribe_tablet_page.dart';
import 'package:shop_co/responsive/tablet/widgets/dress_style_tablet_page.dart';
import 'package:shop_co/responsive/tablet/widgets/footer_tablet_page.dart';
import 'package:shop_co/responsive/tablet/widgets/home_tablet_page.dart';
import 'package:shop_co/responsive/tablet/widgets/new_arrivals_tablet_page.dart';
import 'package:shop_co/responsive/tablet/widgets/review_customer_tablet_page.dart';
import 'package:shop_co/responsive/tablet/widgets/top_selling_tablet_page.dart';

class MyTabletBody extends StatelessWidget {
  const MyTabletBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGray,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const HomePageTablet(),
              const NewArrivalsTabletPage(),
              const TopSellingTabletPage(),
              const DressStyleTabletPage(),
              const ReviewCustomerTabletPage(),
              Transform.translate(
                  offset: const Offset(0, -134),
                  child: const BannerSubscribeTabletPage()),
              Transform.translate(
                  offset: const Offset(0, -100),
                  child: const FooterTabletPage()),
            ],
          ),
        ),
      ),
    );
  }
}
