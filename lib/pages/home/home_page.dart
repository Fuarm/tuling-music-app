import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home/header.dart';
import 'package:tuling_music_app/pages/home/musician_card.dart';
import 'package:tuling_music_app/pages/home/plate_title.dart';
import 'package:tuling_music_app/widget/scrollable_section.dart';
import 'package:tuling_music_app/widget/square_card.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Header(),
            PlateTitle(title: "流行音乐家", onPress: () {}),
            ScrollableSection(
              children: [
                MusicianCard(
                  name: '周慧敏',
                  avatar: 'https://gimg2.baidu.com/image_search/src=http%3A%2F%2Finews.gtimg.com%2Fnewsapp_bt%2F0%2F14035562388%2F1000.jpg&refer=http%3A%2F%2Finews.gtimg.com&app=2002&size=f9999,10000&q=a80&n=0&g=0n&fmt=jpeg?sec=1649151063&t=943fe720aac6f22e6fdf38bb261806fc',
                  category: '流行音乐',
                  onPress: () {},
                ),
                MusicianCard(
                  name: '李知恩(IU)',
                  avatar: 'https://img2.baidu.com/it/u=843289328,75113668&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
                  category: '流行音乐',
                  onPress: () {},
                ),
                MusicianCard(
                  name: 'Michael Joseph Jackson',
                  avatar: 'https://img1.baidu.com/it/u=1052041614,1941121577&fm=253&fmt=auto&app=138&f=JPEG?w=479&h=373',
                  category: '流行音乐',
                  onPress: () {},
                ),
              ],
            ),
            PlateTitle(title: "音乐指南", onPress: () {}),
            ScrollableSection(
              children: [
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img2.baidu.com/it/u=280322670,2498742633&fm=253&fmt=auto&app=138&f=JPEG?w=278&h=500',
                  onPress: () {},
                ),
                SquareCard(
                  title: 'Soul Pop',
                  description: 'From Music',
                  image: 'https://img2.baidu.com/it/u=1789438494,4055272838&fm=253&fmt=auto&app=138&f=JPEG?w=231&h=500',
                  onPress: () {},
                ),
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img0.baidu.com/it/u=1893892304,95296813&fm=26&fmt=auto',
                  onPress: () {},
                )
              ],
            ),
            PlateTitle(title: "最新专辑", onPress: () {}),
            ScrollableSection(
              children: [
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img2.baidu.com/it/u=280322670,2498742633&fm=253&fmt=auto&app=138&f=JPEG?w=278&h=500',
                  onPress: () {},
                ),
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img2.baidu.com/it/u=843289328,75113668&fm=253&fmt=auto&app=138&f=JPEG?w=889&h=500',
                  onPress: () {},
                ),
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img0.baidu.com/it/u=1893892304,95296813&fm=26&fmt=auto',
                  onPress: () {},
                )
              ],
            ),
            PlateTitle(title: "热门电台节目", onPress: () {}),
            ScrollableSection(
              children: [
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img2.baidu.com/it/u=280322670,2498742633&fm=253&fmt=auto&app=138&f=JPEG?w=278&h=500',
                  onPress: () {},
                ),
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img2.baidu.com/it/u=1789438494,4055272838&fm=253&fmt=auto&app=138&f=JPEG?w=231&h=500',
                  onPress: () {},
                ),
                SquareCard(
                  title: 'Soul Pop',
                  description: '4,129K Played',
                  image: 'https://img0.baidu.com/it/u=1893892304,95296813&fm=26&fmt=auto',
                  onPress: () {},
                )
              ],
            ),

            const SafeArea(top: false, child: SizedBox(height: 0)),
          ],
        ),
      ),
    );
  }
}