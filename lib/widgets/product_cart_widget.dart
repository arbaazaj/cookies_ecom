import 'package:cookies_ecom/themes/colors.dart';
import 'package:flutter/material.dart';

class ProductCartWidget extends StatelessWidget {
  const ProductCartWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 32.0),
      child: Stack(
        clipBehavior: Clip.none,
        fit: StackFit.loose,
        children: [
          Container(
            height: 80,
            width: 70,
            decoration: BoxDecoration(
                color: white,
                borderRadius: BorderRadius.circular(12.0),
                border: Border.all(
                  color: white,
                ),
                boxShadow: const [
                  BoxShadow(
                    color: Color.fromRGBO(0, 0, 0, 0.3),
                    blurRadius: 4.0,
                    blurStyle: BlurStyle.solid,
                    offset: Offset(0, 2.0),
                  ),
                ]),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  '6',
                  style: TextStyle(
                      color: black, fontSize: 28, fontWeight: FontWeight.w800),
                ),
                Text(
                  'Products',
                  style: TextStyle(
                      color: Colors.grey.shade800,
                      fontSize: 12,
                      fontWeight: FontWeight.w600),
                ),
              ],
            ),
          ),
          Positioned.fill(
            top: -25,
            child: Align(
              alignment: Alignment.topCenter,
              child: Container(
                height: 40,
                width: 40,
                decoration: BoxDecoration(
                  color: black,
                  borderRadius: BorderRadius.circular(64.0),
                  border: Border.all(color: black),
                ),
                child: const Icon(Icons.shopping_bag_outlined),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
