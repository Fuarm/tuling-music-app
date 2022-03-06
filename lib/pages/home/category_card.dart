import 'package:flutter/material.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    Key? key,
    required this.title,
    required this.description,
    required this.image,
    required this.onPress
  }) : super(key: key);

  final String title, description, image;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    var width = Sizes.size28 * 10;
    var height = Sizes.size20 * 22;
    return Container(
      width: width,
      height: height,
      margin: EdgeInsets.only(right: Sizes.size20 * 2),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
            topLeft: Radius.circular(Sizes.size28),
            topRight: Radius.circular(Sizes.size28),
            bottomLeft: Radius.circular(Sizes.size18),
            bottomRight: Radius.circular(Sizes.size18),
        )
      ),
      clipBehavior: Clip.hardEdge, child: GestureDetector(
        onTap: onPress,
        child: Stack(
          children: [
            Image.network(image, width: width, height: height, fit: BoxFit.cover),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: Sizes.size28),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.size36,
                      height: 2.4,
                    ),
                  ),
                  Text(description,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Sizes.size28,
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}