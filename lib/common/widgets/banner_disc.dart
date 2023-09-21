// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/responsive/dimensions.dart';

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
    var mediaSize = MediaQuery.of(context).size.width;
    return Container(
      alignment: Alignment.center,
      decoration: BoxDecoration(
        color: colorBlack,
      ),
      child: SizedBox(
        width: 1240,
        child: Padding(
          padding: const EdgeInsets.symmetric(
            vertical: 9,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    text ?? '',
                    style: satoshiRegular.copyWith(
                      color: colorWhite,
                      fontSize: mediaSize < mobileWidth ? 12 : 14,
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
                  ),
                ],
              ),
              mediaSize < mobileWidth
                  ? const SizedBox()
                  : Positioned(
                      right: 5,
                      child: IconButton(
                          onPressed: () {},
                          icon: Icon(
                            Icons.close_rounded,
                            color: colorWhite,
                          )),
                    )
            ],
          ),
        ),
      ),
    );
  }
}
