import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/card_item.dart';

class AlsoLikeMobilePage extends StatelessWidget {
  const AlsoLikeMobilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: Column(
        children: [
          const SizedBox(
            height: 50,
          ),
          Text(
            "You Might\nAlso Like".toUpperCase(),
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
              itemCount: dataNewArrivals.length,
              itemBuilder: (context, index) {
                return CardItem(
                  data: dataNewArrivals.elementAt(index),
                );
              },
            ),
          ),
          const SizedBox(
            height: 185,
          ),
        ],
      ),
    );
  }
}
