import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/banner_disc.dart';
import 'package:shop_co/common/widgets/navbar.dart';

class MyMobileBody extends StatelessWidget {
  const MyMobileBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amber,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              BannerDisc(
                text: "Sign up and get 20% off to your first order.",
                textPres: "Sign Up Now",
                ontap: () {},
              ),
              const Navbar(),
              Container(
                width: double.infinity,
                color: colorGray,
                child: Padding(
                  padding: const EdgeInsets.only(
                    top: 40,
                    right: 16,
                    left: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(
                        width: 315,
                        height: 93,
                        child: Text(
                          'FIND CLOTHES THAT MATCHES YOUR STYLE',
                          style: integralBold.copyWith(
                            fontSize: 36,
                            height: 0.85,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Text(
                        'Browse through our diverse range of meticulously crafted garments, designed to bring out your individuality and cater to your sense of style.',
                        style: satoshiRegular.copyWith(
                          color: colorBlack.withOpacity(0.6),
                        ),
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      ActionButton(
                        onTap: () {},
                        border: Border.all(
                          color: Colors.transparent,
                        ),
                        colorButton: colorBlack,
                        text: Text(
                          'Shop Now',
                          style: satoshiMedium.copyWith(
                            fontSize: 16,
                            color: colorWhite,
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 20,
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            height: 52,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '200+',
                                      style: satoshiBold.copyWith(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      'International Brands',
                                      style: satoshiRegular.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  width: 27.5,
                                ),
                                const VerticalDivider(
                                  color: Colors.grey,
                                  width: 2,
                                ),
                                const SizedBox(
                                  width: 27.5,
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      '2,000+',
                                      style: satoshiBold.copyWith(
                                        fontSize: 24,
                                      ),
                                    ),
                                    Text(
                                      'High-Quality Products',
                                      style: satoshiRegular.copyWith(
                                        fontSize: 12,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(
                            height: 12,
                          ),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                '30,000+',
                                style: satoshiBold.copyWith(
                                  fontSize: 24,
                                ),
                              ),
                              Text(
                                'Happy Customers',
                                style: satoshiRegular.copyWith(
                                  fontSize: 12,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      Image.asset('assets/images/modelPerson.png'),
                      const SizedBox(
                        height: 50,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
