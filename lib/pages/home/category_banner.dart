import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home/category_card.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class CategoryBanner extends StatelessWidget {
  const CategoryBanner({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(left: Sizes.size20 * 2),
      child: Row(
        children: [
          CategoryCard(
            title: 'Soul Pop',
            description: '4,129K Played',
            image: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2F09%2F3a%2Fbc%2F093abce7b31f4c8ffdbf345375ff4abb.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647937503&t=8debd684ad289ee0ddc2bc6ca6b68114',
            onPress: () {},
          ),
          CategoryCard(
            title: 'Soul Pop',
            description: '4,129K Played',
            image: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2F09%2F3a%2Fbc%2F093abce7b31f4c8ffdbf345375ff4abb.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647937503&t=8debd684ad289ee0ddc2bc6ca6b68114',
            onPress: () {},
          ),
          CategoryCard(
            title: 'Soul Pop',
            description: '4,129K Played',
            image: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Fup.enterdesk.com%2Fedpic%2F09%2F3a%2Fbc%2F093abce7b31f4c8ffdbf345375ff4abb.jpg&refer=http%3A%2F%2Fup.enterdesk.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1647937503&t=8debd684ad289ee0ddc2bc6ca6b68114',
            onPress: () {},
          )
        ],
      ),
    );
  }
}