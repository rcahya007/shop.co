import 'package:flutter/material.dart';
import 'package:shop_co/responsive/desktop_body.dart';
import 'package:shop_co/responsive/mobile_body.dart';
import 'package:shop_co/responsive/responsive_layout.dart';

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
        desktopBody: MyDesktopBody(),
      ),
    );
  }
}
