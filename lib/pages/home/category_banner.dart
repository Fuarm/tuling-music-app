import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home/category_card.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.only(left: Sizes.size20 * 2),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CategoryCard(
              title: 'Soul Pop',
              description: '4,129K Played',
              image: 'https://img2.baidu.com/it/u=280322670,2498742633&fm=253&fmt=auto&app=138&f=JPEG?w=278&h=500',
              onPress: () {},
            ),
            CategoryCard(
              title: 'Soul Pop',
              description: '4,129K Played',
              image: 'https://img2.baidu.com/it/u=1789438494,4055272838&fm=253&fmt=auto&app=138&f=JPEG?w=231&h=500',
              onPress: () {},
            ),
            CategoryCard(
              title: 'Soul Pop',
              description: '4,129K Played',
              image: 'https://img2.baidu.com/it/u=1029123231,2131532878&fm=253&fmt=auto&app=138&f=JPEG?w=500&h=900',
              onPress: () {},
            )
          ],
        ),
      ),
    );
  }
}