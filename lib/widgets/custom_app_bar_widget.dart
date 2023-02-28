import 'package:cookies_ecom/widgets/product_cart_widget.dart';
import 'package:cookies_ecom/widgets/profile_avatar_widget.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({Key? key, this.appBarHeight = 70}) : super(key: key);

  /// Default [appBarHeight] height is 70.
  final double appBarHeight;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: appBarHeight),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            ProfileAvatarWidget(),
            ProductCartWidget(),
          ],
        ),
      ],
    );
  }
}
