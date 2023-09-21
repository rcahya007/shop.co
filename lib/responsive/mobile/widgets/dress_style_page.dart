import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';

class DressStylePage extends StatelessWidget {
  const DressStylePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: colorWhite,
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      child: Container(
        padding: const EdgeInsets.only(
          top: 40,
          left: 24,
          right: 24,
          bottom: 27,
        ),
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
                fontSize: 32,
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 28,
            ),
            Image.asset('assets/images/dressStyle1.png'),
            Image.asset('assets/images/dressStyle2.png'),
            Image.asset('assets/images/dressStyle3.png'),
            Image.asset('assets/images/dressStyle4.png'),
          ],
        ),
      ),
    );
  }
}
