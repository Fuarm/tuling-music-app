import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class SquareCard extends StatelessWidget {
  const SquareCard({
    Key? key,
    required this.title,
    required this.image,
    required this.description,
    required this.onPress,
  }) : super(key: key);

  final String title, image, description;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var size = Sizes.size28 * 10;
    return Container(
      width: size,
      margin: EdgeInsets.only(right: Sizes.size20 * 2),
      child: GestureDetector(
        onTap: onPress,
        child: Column(
          children: [
            Container(
                width: size,
                height: size * 1.2,
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(Sizes.size16)
                ),
                clipBehavior: Clip.hardEdge,
                child: Image.network(image, width: size, height: size * 1.2, fit: BoxFit.cover)
            ),
            SizedBox(height: Sizes.size20),
            Text(title,
              textAlign: TextAlign.center,
              softWrap: true,
              overflow: TextOverflow.ellipsis,
              maxLines: 2,
              style: primaryText,
            ),
            SizedBox(height: Sizes.size10),
            SizedBox(
              width: size / 2,
              child: Text(description,
                textAlign: TextAlign.center,
                softWrap: true,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
                style: secondaryText,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
