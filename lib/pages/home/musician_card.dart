import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class MusicianCard extends StatelessWidget {
  const MusicianCard({
    Key? key,
    required this.name,
    required this.avatar,
    required this.category,
    required this.onPress
  }) : super(key: key);

  final String name, avatar, category;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    final radius = Sizes.size24 * 5;
    return Container(
      width: radius * 2,
      margin: EdgeInsets.only(right: Sizes.size20 * 2),
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          children: [
            CircleAvatar(
              radius: radius,
              backgroundImage: NetworkImage(avatar),
            ),
            SizedBox(height: Sizes.size20),
            Text(name,
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: primaryText,
            ),
            SizedBox(height: Sizes.size10),
            Text(category,
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              style: secondaryText,
            ),
          ],
        ),
      ),
    );
  }
}
