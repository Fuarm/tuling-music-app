import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';
import 'package:tuling_music_app/pages/login/sign_in.dart';
import 'package:tuling_music_app/pages/login/sign_up.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with TickerProviderStateMixin {

  late TabController _tabController;
  final double _stateBarHeight = MediaQueryData.fromWindow(window).padding.top;
  final double _height = MediaQueryData.fromWindow(window).size.height;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        color: primaryColors,
        child: Column(
          children: [
            SizedBox(height: Sizes.size48 * 4 + _stateBarHeight),
            Expanded(
              child: Container(
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15)
                    )
                  ),
                  child: Column(
                    children: [
                      TabBar(
                        controller: _tabController,
                        tabs: const [
                          Tab(text: "登录"),
                          Tab(text: "注册"),
                        ]
                      ),
                      Expanded(
                        child: TabBarView(
                          controller: _tabController,
                          children: [
                            SignIn(
                                height: _height - Sizes.size48 * 6 - _stateBarHeight,
                                tabController: _tabController
                            ),
                            const SignUp(),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ),
          ],
        ),
      ),
    );
  }
}