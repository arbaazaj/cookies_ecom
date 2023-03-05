import 'package:cookies_ecom/screens/card_header_widget.dart';
import 'package:cookies_ecom/themes/colors.dart';
import 'package:cookies_ecom/widgets/custom_app_bar_widget.dart';
import 'package:cookies_ecom/widgets/custom_cookie_card_widget.dart';
import 'package:cookies_ecom/widgets/custom_offer_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key, required this.title});

  final String title;

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: backgroundColor,
      body: Column(
        mainAxisSize: MainAxisSize.max,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const Padding(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: CardHeaderWidget(),
          ),
          const SizedBox(height: 25.0),
          SingleChildScrollView(
            clipBehavior: Clip.none,
            scrollDirection: Axis.horizontal,
            child: Row(
              children: const [
                CustomCookieCardWidget(
                  imageName: 'assets/chocolate_chip_cookie.png',
                  cookieName: 'Chocolate chips',
                  isPremium: true,
                  price: 20,
                ),
                CustomCookieCardWidget(
                  imageName: 'assets/oatmeal_cookie.png',
                  cookieName: 'Oatmeal with raisins',
                  isPremium: false,
                  price: 16,
                ),
              ],
            ),
          ),
          const SizedBox(height: 15.0),
          // Offer card
          const CustomOfferWidget(),
        ],
      ),
    );
  }
}
