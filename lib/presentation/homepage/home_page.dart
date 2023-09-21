import 'package:flutter/material.dart';
import 'package:shop_co/responsive/desktop/desktop_body.dart';
import 'package:shop_co/responsive/mobile/mobile_body.dart';
import 'package:shop_co/responsive/responsive_layout.dart';
import 'package:shop_co/responsive/tablet/tablet_body.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ResponsiveLayout(
        mobileBody: MyMobileBody(),
        tabletBody: MyTabletBody(),
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
