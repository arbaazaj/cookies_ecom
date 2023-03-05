import 'package:cookies_ecom/themes/colors.dart';
import 'package:flutter/material.dart';

class CustomOfferWidget extends StatelessWidget {
  const CustomOfferWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0, right: 32.0),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Offers',
                style: Theme.of(context)
                    .textTheme
                    .displaySmall!
                    .copyWith(color: white),
              ),
              const Text(
                'See more',
                style: TextStyle(
                    color: darkOrange,
                    fontWeight: FontWeight.w500,
                    fontSize: 18.0),
              ),
            ],
          ),
          const SizedBox(height: 10.0),
          Container(
            height: 120.0,
            width: MediaQuery.of(context).size.width,
            decoration: const BoxDecoration(
              color: grey,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(16.0),
                topRight: Radius.circular(16.0),
                bottomLeft: Radius.circular(16.0),
                bottomRight: Radius.circular(76.0),
              ),
            ),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/double_chocolate.png',
                        fit: BoxFit.cover,
                        height: 80,
                        width: 80,
                      ),
                      Flexible(
                        child: Padding(
                          padding: const EdgeInsets.only(left: 8.0),
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Double chocolate',
                                softWrap: true,
                                style: TextStyle(
                                  fontSize: 24.0,
                                ),
                              ),
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
                            ],
                          ),
                        ),
                      ),
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: const [
                          Text(
                            '20 USD',
                            style: TextStyle(
                                fontSize: 18.0,
                                decoration: TextDecoration.lineThrough),
                          ),
                          Text(
                            '12 USD',
                            style: TextStyle(
                              color: darkOrange,
                              fontSize: 18.0,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                    ],
                  ),
                ),
                Positioned(
                  child: Align(
                    alignment: Alignment.bottomRight,
                    child: GestureDetector(
                      onTap: () {},
                      child: Container(
                        height: 50.0,
                        width: 50.0,
                        decoration: BoxDecoration(
                            color: black,
                            borderRadius: BorderRadius.circular(160.0)),
                        child: const Icon(Icons.arrow_forward),
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
