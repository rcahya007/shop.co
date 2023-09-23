// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/responsive/dimensions.dart';

// ignore: must_be_immutable
class CardItem extends StatelessWidget {
  Map data;
  CardItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size.width;

    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: mediaSize > tabletWidth ? 300 : 198,
            height: mediaSize > tabletWidth ? 300 : 200,
            decoration: BoxDecoration(
              color: colorGray,
              borderRadius: BorderRadius.circular(13.42),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(13.42),
              child: Image.asset(
                data['photoUrl'],
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            data["name"],
            style: satoshiBold.copyWith(
              fontSize: 16,
            ),
          ),
          const SizedBox(
            height: 4,
          ),
          SizedBox(
            height: 16,
            child: Row(
              children: [
                RatingBar.builder(
                  ignoreGestures: true,
                  itemSize: 19,
                  initialRating: data['rating'],
                  minRating: 1,
                  direction: Axis.horizontal,
                  allowHalfRating: true,
                  itemCount: 5,
                  itemPadding: const EdgeInsets.only(right: 5.3),
                  itemBuilder: (context, _) => const Icon(
                    Icons.star,
                    color: Colors.amber,
                  ),
                  onRatingUpdate: (rating) {
                    print(rating);
                  },
                ),
                const SizedBox(
                  width: 11,
                ),
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${data['rating'].toString()}/',
                      style: satoshiRegular.copyWith(
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '5',
                      style: satoshiRegular.copyWith(
                          fontSize: 12, color: colorBlack.withOpacity(0.4)),
                    )
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 4.25,
          ),
          Row(
            children: [
              Text(
                '\$${data['price'].toString()}',
                style: satoshiBold.copyWith(
                  fontSize: 20,
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              data['isDisc']
                  ? Row(
                      children: [
                        Text(
                          '\$${data['priceDisc'].toString()}',
                          style: satoshiBold.copyWith(
                              fontSize: 20,
                              decoration: TextDecoration.lineThrough,
                              color: colorBlack.withOpacity(0.4)),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        Container(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 3,
                          ),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(62),
                            color: const Color(0xffFF3333).withOpacity(0.1),
                          ),
                          child: Text(
                            '-${data['disc'].toString()}%',
                            style: satoshiMedium.copyWith(
                              fontSize: 10,
                              color: const Color(0xffFF3333),
                            ),
                          ),
                        ),
                      ],
                    )
                  : const SizedBox(),
            ],
          )
        ],
      ),
    );
  }
}
