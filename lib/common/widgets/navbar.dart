import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/responsive/dimensions.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size.width;
    return Container(
      color: Colors.white,
      height: 64,
      alignment: Alignment.center,
      child: SizedBox(
        width: 1240,
        height: double.infinity,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Row(
            children: [
              mediaSize < mobileWidth
                  ? const Icon(
                      Icons.menu_rounded,
                      size: 24,
                    )
                  : const SizedBox(),
              SizedBox(
                width: mediaSize < mobileWidth ? 16 : 0,
              ),
              Expanded(
                child: Row(
                  children: [
                    Text(
                      "SHOP.CO",
                      style: integralBold.copyWith(
                        fontSize: 25.2,
                      ),
                    ),
                    SizedBox(
                      width: mediaSize < mobileWidth ? 20 : 10,
                    ),
                    mediaSize < mobileWidth
                        ? const SizedBox()
                        : Row(
                            children: [
                              Text(
                                'Shop',
                                style: satoshiRegular.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'On Sale',
                                style: satoshiRegular.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'New Arrivals',
                                style: satoshiRegular.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Text(
                                'Brands',
                                style: satoshiRegular.copyWith(
                                  fontSize: 14,
                                ),
                              ),
                            ],
                          )
                  ],
                ),
              ),
              const Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    size: 24,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 24,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 24,
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
