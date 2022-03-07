import 'dart:math';

import 'package:flutter/material.dart';
import 'package:tuling_music_app/utils/sizes.dart';
import 'package:tuling_music_app/widget/music_card.dart';

class MusicList extends StatelessWidget {
  const MusicList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Sizes.size20 * 2),
      child: Column(
        children: const [
          MusicCard(
              name: "小幸运",
              album: "Live",
              artist: "李知恩（IU）",
              cover: "https://img0.baidu.com/it/u=1893892304,95296813&fm=26&fmt=auto"
          ),
          MusicCard(
              name: "宝贝",
              album: "Live",
              artist: "李知恩（IU）",
              cover: "https://img0.baidu.com/it/u=3219614707,943220247&fm=253&fmt=auto&app=138&f=JPEG?w=300&h=300"
          )
        ],
      ),
    );
  }
}
