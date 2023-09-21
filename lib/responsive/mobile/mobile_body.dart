import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/responsive/mobile/widgets/dress_style_page.dart';
import 'package:shop_co/responsive/mobile/widgets/home_page.dart';
import 'package:shop_co/responsive/mobile/widgets/new_arrivals_page.dart';
import 'package:shop_co/responsive/mobile/widgets/review_customer_page.dart';
import 'package:shop_co/responsive/mobile/widgets/top_selling_page.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: colorGray,
      body: const SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // HomePageMobile(),
              // NewArrivalsPage(),
              // TopSellingPage(),
              DressStylePage(),
              ReviewCustomerPage(),
            ],
          ),
        ),
      ),
    );
  }
}
