import 'package:cookies_ecom/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomBottomNavBar extends StatelessWidget {
  const CustomBottomNavBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60.0,
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(
        color: veryDarkGrey,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(64.0),
          topRight: Radius.circular(64.0),
          bottomLeft: Radius.circular(0.0),
          bottomRight: Radius.circular(0.0),
        ),
      ),
      child: BottomNavigationBar(
        selectedItemColor: darkOrange,
        backgroundColor: Colors.transparent,
          items: const [
        BottomNavigationBarItem(
          label: 'Home',
          icon: Icon(Icons.home),
        ),
        BottomNavigationBarItem(
          label: 'Search',
          icon: Icon(Icons.search),
        ),
        BottomNavigationBarItem(
          label: 'Premium',
          backgroundColor: grey,
          icon: Icon(Icons.star_border),
        ),
      ]),
    );
  }
}
