import 'package:flutter/material.dart';
import 'package:shop_co/common/global_data.dart';

class Navbar extends StatelessWidget {
  const Navbar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      height: 64,
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
        ),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Icon(
                Icons.menu,
                size: 30,
              ),
            ),
            const SizedBox(
              width: 16,
            ),
            Expanded(
              child: Padding(
                padding: const EdgeInsets.only(top: 13),
                child: Text(
                  'SHOP.CO',
                  style: integralBold.copyWith(
                    fontSize: 25.2,
                  ),
                ),
              ),
            ),
            const Center(
              child: Row(
                children: [
                  Icon(
                    Icons.search_rounded,
                    size: 24,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.shopping_cart_outlined,
                    size: 24,
                  ),
                  SizedBox(
                    width: 12,
                  ),
                  Icon(
                    Icons.account_circle_outlined,
                    size: 24,
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
