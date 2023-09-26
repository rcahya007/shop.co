import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';

class DressStyleDesktopPage extends StatelessWidget {
  const DressStyleDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      color: colorWhite,
      child: Container(
        width: 1240,
        color: colorWhite,
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 50,
        ),
        child: Container(
          padding:
              const EdgeInsets.only(top: 70, bottom: 76, left: 40, right: 40),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(
              20,
            ),
            color: colorGray,
          ),
          child: Column(
            children: [
              Text(
                'BROWSE BY DRESS STYLE',
                style: integralBold.copyWith(
                  fontSize: 48,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 64,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: AspectRatio(
                        aspectRatio: 3 / 2,
                        child: Image.asset(
                          'assets/images/desktopDressStyleFormal1.png',
                          width: 407,
                          height: 289,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Image.asset(
                    'assets/images/desktopDressStyleFormal2.png',
                    width: 684,
                    height: 289,
                    fit: BoxFit.cover,
                  ),
                ],
              ),
              const SizedBox(
                height: 25,
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/desktopDressStyleFormal3.png',
                    width: 684,
                    height: 289,
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  Expanded(
                    child: Align(
                      alignment: Alignment.center,
                      child: AspectRatio(
                        aspectRatio: 3 / 2,
                        child: Image.asset(
                          'assets/images/desktopDressStyleFormal4.png',
                          width: 407,
                          height: 289,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 16,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
