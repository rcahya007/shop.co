import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/card_item.dart';

class TopSellingDesktopPage extends StatelessWidget {
  const TopSellingDesktopPage({super.key});

  @override
  Widget build(BuildContext context) {
    List newArrivalsData = [
      {
        'name': 'Vertical Striped Shirt',
        'priceDisc': 232,
        'price': 212,
        'disc': 20,
        'rating': 5.0,
        'photoUrl': 'assets/images/topSelling1.png',
        'isDisc': true
      },
      {
        'name': 'Courage Graphic T-shirt',
        'priceDisc': 0,
        'price': 145,
        'disc': 0,
        'rating': 4.0,
        'photoUrl': 'assets/images/topSelling2.png',
        'isDisc': false
      },
      {
        'name': 'Loose Fit Bermuda Shorts',
        'priceDisc': 0,
        'price': 80,
        'disc': 0,
        'rating': 3.0,
        'photoUrl': 'assets/images/topSelling3.png',
        'isDisc': false
      },
      {
        'name': 'Faded Skinny Jeans',
        'priceDisc': 0,
        'price': 210,
        'disc': 0,
        'rating': 4.5,
        'photoUrl': 'assets/images/topSelling4.png',
        'isDisc': false
      },
      {
        'name': 'Vertical Striped Shirt',
        'priceDisc': 232,
        'price': 212,
        'disc': 20,
        'rating': 5.0,
        'photoUrl': 'assets/images/topSelling1.png',
        'isDisc': true
      },
      {
        'name': 'Courage Graphic T-shirt',
        'priceDisc': 0,
        'price': 145,
        'disc': 0,
        'rating': 4.0,
        'photoUrl': 'assets/images/topSelling2.png',
        'isDisc': false
      },
      {
        'name': 'Loose Fit Bermuda Shorts',
        'priceDisc': 0,
        'price': 80,
        'disc': 0,
        'rating': 3.0,
        'photoUrl': 'assets/images/topSelling3.png',
        'isDisc': false
      },
    ];
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
                itemCount: newArrivalsData.length,
                itemBuilder: (context, index) {
                  return CardItem(
                    data: newArrivalsData.elementAt(index),
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
