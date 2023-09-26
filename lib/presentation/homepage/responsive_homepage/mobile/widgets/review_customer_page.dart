import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_co/common/global_data.dart';

class ReviewCustomerPage extends StatelessWidget {
  const ReviewCustomerPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: colorWhite,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Expanded(
                  child: Text(
                    'OUR HAPPY CUSTOMERS',
                    style: integralBold.copyWith(
                      fontSize: 32,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                const Row(
                  children: [
                    Icon(
                      Icons.arrow_back_rounded,
                      size: 24,
                    ),
                    SizedBox(
                      width: 16,
                    ),
                    Icon(
                      Icons.arrow_forward_rounded,
                      size: 24,
                    ),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 24,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 16,
            ),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(
                  20,
                ),
                border: Border.all(
                  color: colorGray,
                ),
              ),
              child: Padding(
                padding: const EdgeInsets.all(
                  24,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RatingBar.builder(
                      ignoreGestures: true,
                      itemSize: 19,
                      initialRating: 5,
                      minRating: 1,
                      direction: Axis.horizontal,
                      allowHalfRating: true,
                      itemCount: 5,
                      itemPadding: const EdgeInsets.only(right: 5.3),
                      itemBuilder: (context, _) => const Icon(
                        Icons.star,
                        color: Colors.amber,
                      ),
                      onRatingUpdate: (rating) {},
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          'Sarah M.',
                          style: satoshiBold.copyWith(
                            fontSize: 16,
                          ),
                        ),
                        const SizedBox(
                          width: 4,
                        ),
                        const Icon(
                          Icons.verified,
                          size: 24,
                          color: Color(0xff01AB31),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    Text(
                      """"I'm blown away by the quality and style of the clothes I received from Shop.co. From casual wear to elegant dresses, every piece I've bought has exceeded my expectations.”""",
                      style: satoshiRegular.copyWith(
                        fontSize: 14,
                        color: colorBlack.withOpacity(0.6),
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 184,
          )
        ],
      ),
    );
  }
}
