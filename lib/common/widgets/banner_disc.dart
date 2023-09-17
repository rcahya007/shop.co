// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';

class BannerDisc extends StatelessWidget {
  String? text;
  String? textPres;
  VoidCallback ontap;
  BannerDisc({
    Key? key,
    this.text,
    this.textPres,
    required this.ontap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: colorBlack,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 9,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              text ?? '',
              style: satoshiRegular.copyWith(
                color: colorWhite,
                fontSize: 12,
              ),
            ),
            TextButton(
              onPressed: ontap,
              child: Text(
                textPres ?? '',
                style: satoshiBold.copyWith(
                  color: colorWhite,
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
