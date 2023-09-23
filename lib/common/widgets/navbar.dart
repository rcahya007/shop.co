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
      height: 96,
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
              mediaSize > tabletWidth
                  ? Row(
                      children: [
                        Text(
                          "SHOP.CO",
                          style: integralBold.copyWith(
                            fontSize: 25.2,
                          ),
                        ),
                        SizedBox(
                          width: mediaSize < mobileWidth
                              ? 20
                              : mediaSize < tabletWidth
                                  ? 10
                                  : 40,
                        ),
                        mediaSize < mobileWidth
                            ? const SizedBox()
                            : Row(
                                children: [
                                  Text(
                                    'Shop',
                                    style: satoshiRegular.copyWith(
                                      fontSize:
                                          mediaSize < tabletWidth ? 14 : 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaSize < tabletWidth ? 10 : 24,
                                  ),
                                  Text(
                                    'On Sale',
                                    style: satoshiRegular.copyWith(
                                      fontSize:
                                          mediaSize < tabletWidth ? 14 : 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaSize < tabletWidth ? 10 : 24,
                                  ),
                                  Text(
                                    'New Arrivals',
                                    style: satoshiRegular.copyWith(
                                      fontSize:
                                          mediaSize < tabletWidth ? 14 : 16,
                                    ),
                                  ),
                                  SizedBox(
                                    width: mediaSize < tabletWidth ? 10 : 24,
                                  ),
                                  Text(
                                    'Brands',
                                    style: satoshiRegular.copyWith(
                                      fontSize:
                                          mediaSize < tabletWidth ? 14 : 16,
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 40,
                                  )
                                ],
                              ),
                      ],
                    )
                  : Expanded(
                      child: Row(
                        children: [
                          Text(
                            "SHOP.CO",
                            style: integralBold.copyWith(
                              fontSize: 25.2,
                            ),
                          ),
                          SizedBox(
                            width: mediaSize < mobileWidth
                                ? 20
                                : mediaSize < tabletWidth
                                    ? 10
                                    : 40,
                          ),
                          mediaSize < mobileWidth
                              ? const SizedBox()
                              : Row(
                                  children: [
                                    Text(
                                      'Shop',
                                      style: satoshiRegular.copyWith(
                                        fontSize:
                                            mediaSize < tabletWidth ? 14 : 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: mediaSize < tabletWidth ? 10 : 24,
                                    ),
                                    Text(
                                      'On Sale',
                                      style: satoshiRegular.copyWith(
                                        fontSize:
                                            mediaSize < tabletWidth ? 14 : 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: mediaSize < tabletWidth ? 10 : 24,
                                    ),
                                    Text(
                                      'New Arrivals',
                                      style: satoshiRegular.copyWith(
                                        fontSize:
                                            mediaSize < tabletWidth ? 14 : 16,
                                      ),
                                    ),
                                    SizedBox(
                                      width: mediaSize < tabletWidth ? 10 : 24,
                                    ),
                                    Text(
                                      'Brands',
                                      style: satoshiRegular.copyWith(
                                        fontSize:
                                            mediaSize < tabletWidth ? 14 : 16,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 0,
                                    )
                                  ],
                                ),
                        ],
                      ),
                    ),
              mediaSize > tabletWidth
                  ? Expanded(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                            padding: const EdgeInsets.only(
                              right: 16,
                            ),
                            decoration: BoxDecoration(
                                color: colorGray,
                                borderRadius: BorderRadius.circular(62)),
                            child: TextField(
                              decoration: InputDecoration(
                                border: InputBorder.none,
                                prefixIcon: const Padding(
                                  padding: EdgeInsets.only(
                                    left: 16,
                                    right: 12,
                                  ),
                                  child: Icon(
                                    Icons.search,
                                    size: 24,
                                  ),
                                ),
                                prefixIconConstraints: const BoxConstraints(),
                                hintText: 'Search for products...',
                                hintStyle: satoshiRegular.copyWith(
                                  fontSize: 16,
                                  color: colorBlack.withOpacity(0.4),
                                ),
                              ),
                            ),
                          )
                        ],
                      ),
                    )
                  : const SizedBox(),
              Row(
                children: [
                  mediaSize > tabletWidth
                      ? const SizedBox(
                          width: 40,
                        )
                      : const Row(
                          children: [
                            Icon(
                              Icons.search_rounded,
                              size: 24,
                            ),
                            SizedBox(
                              width: 12,
                            ),
                          ],
                        ),
                  const Icon(
                    Icons.shopping_cart_outlined,
                    size: 24,
                  ),
                  const SizedBox(
                    width: 12,
                  ),
                  const Icon(
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
