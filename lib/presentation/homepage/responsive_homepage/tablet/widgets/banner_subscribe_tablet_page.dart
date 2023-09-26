import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';

class BannerSubscribeTabletPage extends StatelessWidget {
  const BannerSubscribeTabletPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: 16,
      ),
      color: Colors.transparent,
      child: Container(
        padding: const EdgeInsets.symmetric(
          horizontal: 24,
          vertical: 32,
        ),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: colorBlack,
        ),
        child: Column(
          children: [
            Text(
              'STAY UP TO DATE ABOUT OUR LATEST OFFERS',
              style: integralBold.copyWith(
                fontSize: 32,
                color: colorWhite,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            ActionButton(
              onTap: () {},
              border: Border.all(color: Colors.transparent),
              colorButton: colorWhite,
              widget: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.mail_outline_outlined,
                      size: 20,
                      color: colorBlack.withOpacity(0.6),
                    ),
                    const SizedBox(
                      width: 12,
                    ),
                    Expanded(
                      child: TextField(
                        decoration: InputDecoration(
                            border: InputBorder.none,
                            isDense: true,
                            contentPadding: const EdgeInsets.symmetric(
                                horizontal: 0, vertical: 0),
                            hintText: 'Enter your email address',
                            hintStyle: satoshiRegular.copyWith(
                              color: colorBlack.withOpacity(0.6),
                              fontSize: 14,
                            )),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            ActionButton(
                onTap: () {},
                border: Border.all(color: Colors.transparent),
                colorButton: colorWhite,
                widget: Text(
                  'Subscribe to Newsletter',
                  style: satoshiMedium.copyWith(
                    fontSize: 14,
                  ),
                )),
          ],
        ),
      ),
    );
  }
}
