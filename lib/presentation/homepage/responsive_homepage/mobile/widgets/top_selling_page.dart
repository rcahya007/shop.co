import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/card_item.dart';

class TopSellingPage extends StatelessWidget {
  const TopSellingPage({super.key});

  @override
  Widget build(BuildContext context) {
    // PAGE NEW ARRIVALS
    return Container(
      color: colorWhite,
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
            height: 300,
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
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
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
          const SizedBox(
            height: 50,
          ),
        ],
      ),
    );
  }
}
