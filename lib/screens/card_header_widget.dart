import 'package:cookies_ecom/themes/colors.dart';
import 'package:flutter/material.dart';

class CardHeaderWidget extends StatelessWidget {
  const CardHeaderWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.end,
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Cookies',
              style: Theme.of(context)
                  .textTheme
                  .displaySmall!
                  .copyWith(color: white),
            ),
            Text(
              'Premium',
              style:
              Theme.of(context).textTheme.headlineSmall!.copyWith(
                color: darkOrange,
                fontWeight: FontWeight.w400,
                height: 0.8,
              ),
            ),
          ],
        ),
        const Text(
          'See more',
          style: TextStyle(
              color: darkOrange,
              fontWeight: FontWeight.w500,
              fontSize: 18.0),
        ),
      ],
    );
  }
}