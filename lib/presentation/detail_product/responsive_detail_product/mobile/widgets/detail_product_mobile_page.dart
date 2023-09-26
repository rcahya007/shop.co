import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:shop_co/common/global_data.dart';
import 'package:shop_co/common/widgets/action_button.dart';
import 'package:shop_co/common/widgets/banner_disc.dart';
import 'package:shop_co/common/widgets/navbar.dart';
import 'package:shop_co/presentation/detail_product/responsive_detail_product/mobile/widgets/also_like_mobile_page.dart';

class DetailProductMobilePage extends StatefulWidget {
  const DetailProductMobilePage({super.key});

  @override
  State<DetailProductMobilePage> createState() =>
      _DetailProductMobilePageState();
}

class _DetailProductMobilePageState extends State<DetailProductMobilePage>
    with SingleTickerProviderStateMixin {
  bool discount = true;

  int getDiscount = 40;

  int price = 260;

  int discountPrice = 300;
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(vsync: this, length: 3, initialIndex: 1);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        BannerDisc(
          text: "Sign up and get 20% off to your first order.",
          textPres: "Sign Up Now",
          ontap: () {},
        ),
        const Navbar(),
        Container(
          color: colorWhite,
          child: Column(
            children: [
              const Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Divider(),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Row(
                  children: [
                    Text(
                      'Home >',
                      style: satoshiRegular.copyWith(
                          fontSize: 14, color: colorBlack.withOpacity(0.6)),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Shop >',
                      style: satoshiRegular.copyWith(
                          fontSize: 14, color: colorBlack.withOpacity(0.6)),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'Men >',
                      style: satoshiRegular.copyWith(
                          fontSize: 14, color: colorBlack.withOpacity(0.6)),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                    Text(
                      'T-shirt',
                      style: satoshiRegular.copyWith(
                          fontSize: 14, color: colorBlack.withOpacity(0.6)),
                    ),
                    const SizedBox(
                      width: 6,
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  children: [
                    Container(
                      width: double.infinity,
                      height: 290,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        color: const Color(0xffF0EEED),
                      ),
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(
                          20,
                        ),
                        child: Image.asset(
                          'assets/images/newArrivals3.png',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 111,
                          height: 106,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: const Color(0xffF0EEED),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            child: Image.asset(
                              'assets/images/newArrivals3.png',
                            ),
                          ),
                        ),
                        Container(
                          width: 111,
                          height: 106,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: const Color(0xffF0EEED),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            child: Image.asset(
                              'assets/images/newArrivals3.png',
                            ),
                          ),
                        ),
                        Container(
                          width: 111,
                          height: 106,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            color: const Color(0xffF0EEED),
                          ),
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(
                              20,
                            ),
                            child: Image.asset(
                              'assets/images/newArrivals3.png',
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'One Life Graphic T-shirt',
                      style: integralBold.copyWith(fontSize: 24),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        RatingBar.builder(
                          ignoreGestures: true,
                          itemSize: 19,
                          initialRating: 4.5,
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
                              '4.5/',
                              style: satoshiRegular.copyWith(
                                fontSize: 12,
                              ),
                            ),
                            Text(
                              '5',
                              style: satoshiRegular.copyWith(
                                  fontSize: 12,
                                  color: colorBlack.withOpacity(0.4)),
                            )
                          ],
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        Text(
                          '\$${price.toString()}',
                          style: satoshiBold.copyWith(
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(
                          width: 5,
                        ),
                        discount
                            ? Row(
                                children: [
                                  Text(
                                    '\$${discountPrice.toString()}',
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
                                      color: const Color(0xffFF3333)
                                          .withOpacity(0.1),
                                    ),
                                    child: Text(
                                      '-${getDiscount.toString()}%',
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
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Text(
                      'This graphic t-shirt which is perfect for any occasion. Crafted from a soft and breathable fabric, it offers superior comfort and style.',
                      style: satoshiRegular.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(),
                  ],
                ),
              ),
              Container(
                color: colorWhite,
                child: Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        height: 24,
                      ),
                      Text(
                        'Select Colors',
                        style: satoshiRegular.copyWith(
                          fontSize: 14,
                        ),
                      ),
                      const SizedBox(
                        height: 16,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.amber,
                              borderRadius: BorderRadius.circular(100),
                            ),
                            child: const Center(
                              child: Icon(
                                Icons.done,
                              ),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                          Container(
                            margin: const EdgeInsets.only(right: 12),
                            height: 40,
                            width: 40,
                            decoration: BoxDecoration(
                              color: Colors.pink,
                              borderRadius: BorderRadius.circular(100),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      const Divider(),
                    ],
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Text(
                      'Choose Size',
                      style: satoshiRegular.copyWith(
                        fontSize: 14,
                      ),
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Row(
                      children: [
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(62),
                            color: colorGray,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'Small',
                            style: satoshiRegular,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(62),
                            color: colorGray,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'Medium',
                            style: satoshiRegular,
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(62),
                            color: colorBlack,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'Large',
                            style: satoshiRegular.copyWith(
                              color: colorWhite,
                            ),
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(right: 6),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(62),
                            color: colorGray,
                          ),
                          padding: const EdgeInsets.symmetric(
                            horizontal: 20,
                            vertical: 10,
                          ),
                          child: Text(
                            'X-Large',
                            style: satoshiRegular,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 24,
                    ),
                    const Divider(),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  children: [
                    const SizedBox(
                      height: 24,
                    ),
                    Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: colorGray,
                            borderRadius: BorderRadius.circular(
                              62,
                            ),
                          ),
                          width: 110,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 16, vertical: 12),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              const Icon(
                                Icons.remove,
                              ),
                              Text(
                                '1',
                                style: satoshiMedium,
                              ),
                              const Icon(
                                Icons.add,
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 12,
                        ),
                        Expanded(
                          child: Container(
                            decoration: BoxDecoration(
                              color: colorBlack,
                              borderRadius: BorderRadius.circular(
                                62,
                              ),
                            ),
                            padding: const EdgeInsets.symmetric(
                                horizontal: 16, vertical: 12),
                            child: Center(
                              child: Text(
                                'Add to Cart',
                                style: satoshiMedium.copyWith(
                                  color: colorWhite,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    DefaultTabController(
                      length: 3,
                      initialIndex: 1,
                      child: TabBar(
                        controller: _tabController,
                        tabs: [
                          Tab(
                            child: Text(
                              'Product Details',
                              style: satoshiRegular.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'Rating & Reviews',
                              style: satoshiRegular.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ),
                          Tab(
                            child: Text(
                              'FAQs',
                              style: satoshiRegular.copyWith(
                                fontSize: 16,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(
                      height: 900,
                      child: TabBarView(
                        controller: _tabController,
                        children: const [
                          ProductDetails(),
                          RatingViews(),
                          Faqs(),
                        ],
                      ),
                    ),
                    const SizedBox(
                      height: 50,
                    ),
                  ],
                ),
              ),
              const AlsoLikeMobilePage(),
            ],
          ),
        ),
      ],
    );
  }
}

class ProductDetails extends StatelessWidget {
  const ProductDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "This is Product Details",
      style: TextStyle(fontSize: 20),
    ));
  }
}

class RatingViews extends StatelessWidget {
  const RatingViews({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                Text(
                  'All Reviews',
                  style: satoshiBold.copyWith(
                    fontSize: 20,
                  ),
                ),
                const SizedBox(
                  width: 6,
                ),
                Text(
                  '(451)',
                  style: satoshiRegular.copyWith(
                    fontSize: 14,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Container(
                  height: 40,
                  width: 40,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(100),
                    color: colorGray,
                  ),
                  child: const RotatedBox(
                    quarterTurns: 1,
                    child: Icon(
                      Icons.tune,
                      size: 20,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 4,
                ),
                Container(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 16,
                    vertical: 12,
                  ),
                  decoration: BoxDecoration(
                    color: colorBlack,
                    borderRadius: BorderRadius.circular(62),
                  ),
                  child: Text(
                    'Write a Review',
                    style: satoshiMedium.copyWith(
                      color: colorWhite,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
        const SizedBox(
          height: 20,
        ),
        Container(
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
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Posted on August 14, 2023',
                  style: satoshiMedium.copyWith(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
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
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Posted on August 14, 2023',
                  style: satoshiMedium.copyWith(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 16,
        ),
        Container(
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
                ),
                const SizedBox(
                  height: 16,
                ),
                Text(
                  'Posted on August 14, 2023',
                  style: satoshiMedium.copyWith(
                    fontSize: 14,
                  ),
                )
              ],
            ),
          ),
        ),
        const SizedBox(
          height: 20,
        ),
        SizedBox(
          width: 195,
          child: ActionButton(
            onTap: () {},
            border: Border.all(
              color: colorGray,
            ),
            colorButton: colorWhite,
            widget: Center(
              child: Text(
                'Load More Reviews',
                style: satoshiMedium.copyWith(
                  fontSize: 14,
                ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}

class Faqs extends StatelessWidget {
  const Faqs({super.key});

  @override
  Widget build(BuildContext context) {
    return const Center(
        child: Text(
      "This is Tab FAQs",
      style: TextStyle(fontSize: 20),
    ));
  }
}
