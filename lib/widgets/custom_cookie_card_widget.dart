import 'package:cookies_ecom/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomCookieCardWidget extends StatelessWidget {
  const CustomCookieCardWidget(
      {super.key, this.imageName, this.price, this.cookieName, this.isPremium});

  final String? imageName;
  final String? cookieName;
  final bool? isPremium;
  final double? price;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
      child: SizedBox(
        height: 300,
        child: Stack(
          alignment: Alignment.bottomCenter,
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            // Card Container.
            Container(
              height: 205,
              width: 195,
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
                    Text(
                      cookieName!,
                      softWrap: true,
                      style: const TextStyle(
                        fontSize: 32,
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    isPremium!
                        ? Row(
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
                          )
                        : Text('General'.toUpperCase(),
                            style: const TextStyle(
                                color: Colors.amber, fontSize: 18.0)),
                    const SizedBox(height: 10.0),
                    Text(
                      '\$$price USD',
                      style: const TextStyle(
                          fontSize: 22.0, fontWeight: FontWeight.w600),
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
                        borderRadius: BorderRadius.circular(160.0)),
                    child: const Icon(Icons.arrow_forward),
                  ),
                ),
              ),
            ),
            // Cookie Image.
            Positioned.fill(
              top: -20,
              child: Align(
                alignment: Alignment.topCenter,
                child: Image.asset(imageName!,
                  fit: BoxFit.cover,
                  height: 150,
                  width: 150,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
