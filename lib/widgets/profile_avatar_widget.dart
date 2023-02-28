import 'package:cookies_ecom/themes/colors.dart';
import 'package:flutter/material.dart';

class ProfileAvatarWidget extends StatelessWidget {
  const ProfileAvatarWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 32.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 24,
            child: Container(
              decoration: BoxDecoration(
                  border: Border.all(width: 1.5, color: white),
                  borderRadius: BorderRadius.circular(32.0)),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(32.0),
                clipBehavior: Clip.antiAliasWithSaveLayer,
                child: Image.network(
                  'https://i.pravatar.cc/300',
                  filterQuality: FilterQuality.high,
                  isAntiAlias: true,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text(
                  'James',
                  style: TextStyle(
                      fontSize: 20.0,
                      fontWeight: FontWeight.w500
                  ),
                ),
                Text('Figueroa'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}