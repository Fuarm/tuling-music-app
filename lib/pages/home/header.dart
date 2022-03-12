import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home/category_banner.dart';
import 'package:tuling_music_app/pages/home/notification_area.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class Header extends StatelessWidget {
  const Header({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Sizes.size20 * 36,
      child: Stack(
        children: [
          NotificationArea(),
          Transform.translate(
            offset: Offset(0, Sizes.size20 * 14),
            child: const CategoryBanner(),
          ),
        ],
      ),
    );
  }
}
