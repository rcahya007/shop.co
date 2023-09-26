import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/card_item.dart';

class TopSellingDesktopPage extends StatelessWidget {
  const TopSellingDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    // PAGE NEW ARRIVALS
    return Container(
      alignment: Alignment.center,
      color: colorWhite,
      child: SizedBox(
        width: 1240,
        child: Column(
          children: [
            const SizedBox(
              height: 40,
            ),
            Text(
              "TOP SELLING",
              style: integralBold.copyWith(
                fontSize: 32,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 32,
            ),
            SizedBox(
              height: 408,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: dataTopSelling.length,
                itemBuilder: (context, index) {
                  return CardItem(
                    data: dataTopSelling.elementAt(index),
                  );
                },
              ),
            ),
            const SizedBox(
              height: 24,
            ),
            Center(
              child: SizedBox(
                width: 250,
                child: ActionButton(
                  onTap: () {},
                  widget: Text(
                    'View All',
                    style: satoshiMedium.copyWith(
                      fontSize: 14,
                    ),
                  ),
                  border: Border.all(
                    color: colorBlack.withOpacity(0.1),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
          ],
        ),
      ),
    );
  }
}
