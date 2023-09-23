import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/banner_disc.dart';
import 'package:shop_co/common/widgets/navbar.dart';

class HomeDesktopPage extends StatelessWidget {
  const HomeDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerDisc(
          text: "Sign up and get 20% off to your first order.",
          textPres: "Sign Up Now",
          ontap: () {},
        ),
        const Navbar(),
        SizedBox(
          width: 1240,
          child: Row(
            children: [
              Expanded(
                child: Container(
                  padding: const EdgeInsets.all(16),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 577,
                        child: Text(
                          'FIND CLOTHES THAT MATCHES YOUR STYLE',
                          style: integralBold.copyWith(
                            fontSize: 64,
                            height: 0.85,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      Text(
                        'Browse through our diverse range of meticulously crafted garments, designed to bring out your individuality and cater to your sense of style.',
                        style: satoshiRegular.copyWith(
                          color: colorBlack.withOpacity(0.6),
                          fontSize: 16,
                        ),
                      ),
                      const SizedBox(
                        height: 32,
                      ),
                      SizedBox(
                        width: 210,
                        child: ActionButton(
                          onTap: () {},
                          border: Border.all(
                            color: Colors.transparent,
                          ),
                          colorButton: colorBlack,
                          widget: Text(
                            'Shop Now',
                            style: satoshiMedium.copyWith(
                              fontSize: 16,
                              color: colorWhite,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 48,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 74,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '200+',
                                      style: satoshiBold.copyWith(
                                        fontSize: 40,
                                        height: 1,
                                      ),
                                    ),
                                    Text(
                                      'International Brands',
                                      style: satoshiRegular.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const VerticalDivider(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2,000+',
                                      style: satoshiBold.copyWith(
                                        fontSize: 40,
                                        height: 1,
                                      ),
                                    ),
                                    Text(
                                      'High-Quality Products',
                                      style: satoshiRegular.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                const VerticalDivider(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '30,000+',
                                      style: satoshiBold.copyWith(
                                        fontSize: 40,
                                        height: 1,
                                      ),
                                    ),
                                    Text(
                                      'Happy Customers',
                                      style: satoshiRegular.copyWith(
                                        fontSize: 16,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              Expanded(
                child: Image.asset(
                  'assets/images/modelTablet2 copy.png',
                  fit: BoxFit.cover,
                ),
              ),
            ],
          ),
        ),
        Container(
            alignment: Alignment.center,
            padding: const EdgeInsets.symmetric(
              vertical: 39,
              horizontal: 16,
            ),
            decoration: BoxDecoration(
              color: colorBlack,
            ),
            child: SizedBox(
              width: 1240,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Image.asset(
                        'assets/images/versace_logo.png',
                        height: 33.16,
                      ),
                      Image.asset(
                        'assets/images/zara_logo.png',
                        height: 38,
                      ),
                      Image.asset(
                        'assets/images/gucci_logo.png',
                        height: 36,
                      ),
                      Image.asset(
                        'assets/images/prada_logo.png',
                        height: 32,
                      ),
                      Image.asset(
                        'assets/images/calvin_klein_logo.png',
                        height: 33.35,
                      ),
                    ],
                  ),
                ],
              ),
            )),
      ],
    );
  }
}
