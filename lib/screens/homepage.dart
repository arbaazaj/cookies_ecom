import 'package:cookies_ecom/screens/card_header_widget.dart';
import 'package:cookies_ecom/themes/colors.dart';
import 'package:cookies_ecom/widgets/custom_app_bar_widget.dart';
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
          const SizedBox(height: 20.0),
          Padding(
            // TODO: Need to uncomment right padding later.
            padding: const EdgeInsets.only(left: 32.0, /*right: 32.0*/),
            child: Stack(
              alignment: Alignment.center,
              fit: StackFit.loose,
              clipBehavior: Clip.none,
              children: [
                // Card Container.
                Container(
                  height: 220,
                  width: 200,
                  decoration: const BoxDecoration(
                    color: grey,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(16.0),
                      topRight: Radius.circular(16.0),
                      bottomLeft: Radius.circular(16.0),
                      bottomRight: Radius.circular(96.0),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Chocolate chips',
                          softWrap: true,
                          style: TextStyle(
                            fontSize: 32,
                          ),
                        ),
                        const SizedBox(height: 10.0),
                        Row(
                          children: [
                            Image.asset(
                              'assets/crown.png',
                              height: 24.0,
                              width: 24.0,
                              color: darkOrange,
                            ),
                            const SizedBox(width: 10.0),
                            Text(
                              'Premium'.toUpperCase(),
                              style: const TextStyle(
                                color: darkOrange,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                        const SizedBox(height: 10.0),
                        const Text(
                          '\$20 USD',
                          style: TextStyle(
                              fontSize: 22.0,
                              fontWeight: FontWeight.w600
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                // Icon Button.
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 60.0,
                        width: 60.0,
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(160.0)
                        ),
                        child: const Icon(Icons.arrow_forward),
                      ),
                    ),
                  ),
                ),
                // Cookie Image.
                Positioned.fill(
                  child: Align(
                    alignment: Alignment.topCenter,
                    child: Image.asset(
                      'assets/chocolate_chip_cookie.png',
                      fit: BoxFit.cover,
                      height: 150,
                      width: 150,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
