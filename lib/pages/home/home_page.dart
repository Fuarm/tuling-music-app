import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home/category_banner.dart';
import 'package:tuling_music_app/pages/home/header.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Header(),
          Transform.translate(
            offset: Offset(0, Sizes.size36 * -6),
            child: CategoryBanner(),
          ),
        ],
      ),
    );
  }
}