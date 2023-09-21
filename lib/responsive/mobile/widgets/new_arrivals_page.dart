import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/card_item.dart';

class NewArrivalsPage extends StatelessWidget {
  const NewArrivalsPage({super.key});

  @override
  Widget build(BuildContext context) {
    List newArrivalsData = [
      {
        'name': 'T-shirt with Tape Details',
        'priceDisc': 0,
        'price': 120,
        'disc': 0,
        'rating': 4.5,
        'photoUrl': 'assets/images/newArrivals1.png',
        'isDisc': false
      },
      {
        'name': 'Skinny Fit Jeans',
        'priceDisc': 260,
        'price': 240,
        'disc': 20,
        'rating': 3.5,
        'photoUrl': 'assets/images/newArrivals2.png',
        'isDisc': true
      },
      {
        'name': 'Checkered Shirt',
        'priceDisc': 0,
        'price': 180,
        'disc': 0,
        'rating': 4.5,
        'photoUrl': 'assets/images/newArrivals3.png',
        'isDisc': false
      },
      {
        'name': 'Sleeve Striped T-shirt',
        'priceDisc': 160,
        'price': 130,
        'disc': 30,
        'rating': 4.5,
        'photoUrl': 'assets/images/newArrivals4.png',
        'isDisc': true
      },
    ];
    // PAGE NEW ARRIVALS
    return Container(
      color: colorWhite,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "New Arrivals",
            style: integralBold.copyWith(
              fontSize: 32,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 32,
          ),
          SizedBox(
            height: 300,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: ActionButton(
              onTap: () {},
              text: Text(
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
          const SizedBox(
            height: 40,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Divider(),
          ),
        ],
      ),
    );
  }
}
