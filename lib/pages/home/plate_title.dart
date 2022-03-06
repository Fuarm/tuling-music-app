import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class PlateTitle extends StatelessWidget {
  const PlateTitle({
    Key? key,
    required this.title,
    required this.onPress
  }) : super(key: key);

  final String title;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      padding: EdgeInsets.symmetric(horizontal: Sizes.size20 * 2),
      margin: EdgeInsets.only(top: Sizes.size54, bottom: Sizes.size28),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          Text(title,
            style: TextStyle(
              fontSize: Sizes.size42,
              fontWeight: FontWeight.bold,
              color: Colors.black87
            ),
          ),
          Text("更多",
            style: TextStyle(
                fontSize: Sizes.size28,
                color: primaryColors.shade700,
            ),
          ),
        ],
      ),
    );
  }
}
