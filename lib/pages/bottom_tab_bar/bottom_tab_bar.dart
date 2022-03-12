import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home/home_page.dart';
import 'package:tuling_music_app/pages/user/user_page.dart';

class BottomTabBar extends StatefulWidget {
  const BottomTabBar({Key? key}) : super(key: key);

  @override
  State<BottomTabBar> createState() => _BottomTabBarState();
}

class _BottomTabBarState extends State<BottomTabBar> {

  int _currentIndex = 0;
  final PageController _pageController = PageController();

  void _onPageChanged(int index) {
    setState(() {
      _currentIndex = index;
    });
  }

  void _onTapped(int index) {
    _pageController.animateToPage(
        index,
        duration: const Duration(milliseconds: 300),
        curve: Curves.ease
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: '首页'),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: '我的'),
        ],
        currentIndex: _currentIndex,
        onTap: _onTapped,
      ),
      body: PageView(
        children: const [
          HomePage(),
          UserPage()
        ],
        controller: _pageController,
        onPageChanged: _onPageChanged,
      ),
    );
  }
}
