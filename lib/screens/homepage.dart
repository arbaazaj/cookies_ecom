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
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const CustomAppBar(),
          const Padding(
            padding: EdgeInsets.only(left: 32.0, right: 32.0),
            child: CardHeaderWidget(),
          ),
          const SizedBox(height: 20.0),
          Padding(
            padding: const EdgeInsets.only(left: 32.0, right: 32.0),
            child: Stack(
              clipBehavior: Clip.none,
              fit: StackFit.loose,
              children: [
                Positioned.fill(
                  top: 120,
                  bottom: -120,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Container(
                      height: 330,
                      width: 200,
                      decoration: const BoxDecoration(
                        color: grey,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(16.0),
                          topRight: Radius.circular(16.0),
                          bottomLeft: Radius.circular(16.0),
                          bottomRight: Radius.circular(64.0),
                        ),
                      ),
                    ),
                  ),
                ),
                Image.asset(
                  'assets/chocolate_chip_cookie.png',
                  fit: BoxFit.cover,
                  height: 180,
                  width: 180,
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.center,
                    child: IconButton(
                      onPressed: () {},
                      style: const ButtonStyle(
                        backgroundColor: MaterialStatePropertyAll(black),
                      ),
                      icon: const Icon(
                        Icons.arrow_forward,
                        color: white,
                      ),
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
