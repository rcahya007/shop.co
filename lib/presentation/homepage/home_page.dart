import 'package:flutter/material.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/desktop/desktop_body.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/mobile/mobile_body.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/homepage_layout.dart';
import 'package:shop_co/presentation/homepage/responsive_homepage/tablet/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: HomepageLayout(
        mobileBody: MyMobileBody(),
        tabletBody: MyTabletBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
