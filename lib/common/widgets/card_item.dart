// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';

import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/dimensions.dart';
import 'package:shop_co/presentation/detail_product/detail_product_page.dart';

// ignore: must_be_immutable
class CardItem extends StatefulWidget {
  Map data;
  CardItem({
    Key? key,
    required this.data,
  }) : super(key: key);

  @override
  State<CardItem> createState() => _CardItemState();
}

class _CardItemState extends State<CardItem> {
  @override
  Widget build(BuildContext context) {
    var mediaSize = MediaQuery.of(context).size.width;

    return GestureDetector(
      onTap: () {
        Navigator.push(context, MaterialPageRoute(
          builder: (context) {
            return const DetailProductPage();
          },
        ));
      },
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Stack(
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
                      widget.data['photoUrl'],
                    ),
                  ),
                ),
                Positioned(
                  right: 10,
                  top: 10,
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        widget.data['isLiked'] = !widget.data['isLiked'];
                      });
                    },
                    child: Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.white,
                      ),
                      child: Icon(
                        widget.data['isLiked']
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: widget.data['isLiked'] ? Colors.red[400] : null,
                        size: 35,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 10,
            ),
            Text(
              widget.data["name"],
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
                    initialRating: widget.data['rating'],
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
                    width: 11,
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        '${widget.data['rating'].toString()}/',
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
                  '\$${widget.data['price'].toString()}',
                  style: satoshiBold.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                widget.data['isDisc']
                    ? Row(
                        children: [
                          Text(
                            '\$${widget.data['priceDisc'].toString()}',
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
                              '-${widget.data['disc'].toString()}%',
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
      ),
    );
  }
}
