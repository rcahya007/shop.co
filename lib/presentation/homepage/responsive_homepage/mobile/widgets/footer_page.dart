// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:icons_plus/icons_plus.dart';

import 'package:shop_co/common/global_data.dart';

class FooterPage extends StatelessWidget {
  const FooterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'SHOP.CO',
            style: integralBold.copyWith(
              fontSize: 28.85,
              color: colorBlack,
            ),
          ),
          const SizedBox(
            height: 14,
          ),
          Text(
            'We have clothes that suits your style and which you’re proud to wear. From women to men.',
            style: satoshiRegular.copyWith(
              fontSize: 14,
              color: colorBlack.withOpacity(0.6),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              IconSosialMedia(
                colorBorder: colorBlack.withOpacity(0.2),
                colorIcon: colorWhite,
                icon: Icon(
                  FontAwesome.twitter,
                  color: colorBlack,
                  size: 14,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IconSosialMedia(
                colorBorder: Colors.transparent,
                colorIcon: colorBlack,
                icon: Icon(
                  FontAwesome.facebook_f,
                  color: colorWhite,
                  size: 13,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IconSosialMedia(
                colorBorder: colorBlack.withOpacity(0.2),
                colorIcon: colorWhite,
                icon: Icon(
                  FontAwesome.instagram,
                  color: colorBlack,
                  size: 14,
                ),
              ),
              const SizedBox(
                width: 12,
              ),
              IconSosialMedia(
                colorBorder: colorBlack.withOpacity(0.2),
                colorIcon: colorWhite,
                icon: Icon(
                  FontAwesome.github,
                  color: colorBlack,
                  size: 14,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 25,
          ),
          Column(
            children: [
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'COMPANY',
                          style: satoshiMedium.copyWith(
                            fontSize: 14,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'About',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Features',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Works',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Career',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'HELP',
                          style: satoshiMedium.copyWith(
                            fontSize: 14,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Customer Support',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Delivery Details',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Term & Conditions',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Privacy Policy',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 24,
              ),
              Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'FAQ',
                          style: satoshiMedium.copyWith(
                            fontSize: 14,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Account',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Manage Deliveries',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Orders',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Payment',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Resources'.toUpperCase(),
                          style: satoshiMedium.copyWith(
                            fontSize: 14,
                            letterSpacing: 3,
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Free eBook',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Development Tutorial',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'How to - Blog',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                        Text(
                          'Youtube Playlist',
                          style: satoshiRegular.copyWith(
                            fontSize: 14,
                            color: colorBlack.withOpacity(0.6),
                          ),
                        ),
                        const SizedBox(
                          height: 16,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Divider(),
              const SizedBox(
                height: 16,
              ),
              Text(
                'Shop.co © 2000-2023, All Rights Reserved',
                style: satoshiRegular.copyWith(
                  fontSize: 14,
                  color: colorBlack.withOpacity(0.6),
                ),
              ),
              const SizedBox(
                height: 16,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    width: 39.96,
                    height: 25.74,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(4.61),
                    ),
                    child: Logo(
                      Logos.visa,
                    ),
                  ),
                  const SizedBox(
                    width: 10.3,
                  ),
                  Container(
                    width: 39.96,
                    height: 25.74,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(4.61),
                    ),
                    child: Logo(
                      Logos.mastercard,
                    ),
                  ),
                  const SizedBox(
                    width: 10.3,
                  ),
                  Container(
                    width: 39.96,
                    height: 25.74,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 9,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(4.61),
                    ),
                    child: Logo(
                      Logos.paypal,
                    ),
                  ),
                  const SizedBox(
                    width: 10.3,
                  ),
                  Container(
                    width: 39.96,
                    height: 25.74,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(4.61),
                    ),
                    child: Logo(
                      Logos.apple_pay,
                    ),
                  ),
                  const SizedBox(
                    width: 10.3,
                  ),
                  Container(
                    width: 39.96,
                    height: 25.74,
                    decoration: BoxDecoration(
                      color: colorWhite,
                      borderRadius: BorderRadius.circular(4.61),
                    ),
                    child: Logo(
                      Logos.google_pay,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}

// ignore: must_be_immutable
class IconSosialMedia extends StatelessWidget {
  Color colorIcon;
  Color colorBorder;
  Icon icon;
  IconSosialMedia({
    Key? key,
    required this.colorIcon,
    required this.colorBorder,
    required this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 28,
      width: 28,
      decoration: BoxDecoration(
        border: Border.all(
          color: colorBorder,
          strokeAlign: BorderSide.strokeAlignInside,
        ),
        color: colorIcon,
        borderRadius: BorderRadius.circular(100),
      ),
      child: icon,
    );
  }
}
