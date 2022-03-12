import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class SignIn extends StatefulWidget {

  const SignIn({
    Key? key,
    required this.height,
    required this.tabController
  }) : super(key: key);

  final double height;
  final TabController tabController;

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  final double _safeAreaBottom = MediaQueryData.fromWindow(window).padding.bottom;

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      textStyle: TextStyle(fontSize: Sizes.size32),
      padding: const EdgeInsets.all(14.0)
    );

    return SingleChildScrollView(
      child: Container(
        constraints: BoxConstraints(
          minHeight: widget.height
        ),
        padding: EdgeInsets.only(
          left: Sizes.size42,
          right: Sizes.size42,
          top: Sizes.size48,
        ),
        child: IntrinsicHeight(
          child: Column(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text("登录",
                    style: TextStyle(
                      fontSize: Sizes.size48,
                      color: primaryColors.shade700,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(height: Sizes.size12),
                  const Text("欢迎来到图灵音乐",
                    style: TextStyle(
                        fontSize: 14,
                        color: Colors.grey
                    ),
                  ),
                  SizedBox(height: Sizes.size24 * 2),
                  TextField(
                    style: TextStyle(fontSize: Sizes.size28),
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(fontSize: Sizes.size32),
                      contentPadding: EdgeInsets.symmetric(horizontal: Sizes.size28, vertical: Sizes.size32),
                      border: const OutlineInputBorder(),
                      labelText: '用户名/手机号',
                    ),
                  ),
                  SizedBox(height: Sizes.size48),
                  TextField(
                    obscureText: true,
                    style: TextStyle(fontSize: Sizes.size28),
                    decoration: InputDecoration(
                      floatingLabelStyle: TextStyle(fontSize: Sizes.size32),
                      contentPadding: EdgeInsets.symmetric(horizontal: Sizes.size28, vertical: Sizes.size32),
                      border: const OutlineInputBorder(),
                      labelText: '密码',
                    ),
                  ),
                  TextButton(
                    style: TextButton.styleFrom(
                        textStyle: TextStyle(fontSize: Sizes.size28),
                        primary: Colors.white,
                        padding: const EdgeInsets.all(0)
                    ),
                    onPressed: () {},
                    child: const Text('忘记密码？', style: TextStyle(color: primaryColors)),
                  ),
                  SizedBox(height: Sizes.size32),
                  FractionallySizedBox(
                    widthFactor: 1,
                    child: ElevatedButton(
                      style: style,
                      onPressed: () {},
                      child: const Text("登录"),
                    ),
                  ),
                  const SizedBox(height: 24),
                ],
              ),
              const Expanded(
                child: SizedBox(),
              ),
              Column(
                children: [
                  Text("其他登录方式", style: secondaryText),
                  SizedBox(height: Sizes.size32),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        const CircleAvatar(
                          backgroundColor: Colors.lightBlue,
                          child: Icon(Icons.fingerprint, color: Colors.white),
                        ),
                        SizedBox(width: Sizes.size24),
                        const CircleAvatar(
                          backgroundColor: Colors.green,
                          child: Icon(Icons.construction_sharp, color: Colors.white),
                        ),
                        SizedBox(width: Sizes.size24),
                        const CircleAvatar(
                          backgroundColor: Colors.black,
                          child: Icon(Icons.local_fire_department, color: Colors.white),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: Sizes.size24),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text("没有账号?", style: TextStyle(color: Colors.grey)),
                      TextButton(
                        style: TextButton.styleFrom(
                          textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                          primary: Colors.white,
                        ),
                        onPressed: () {
                          widget.tabController.animateTo(1);
                        },
                        child: const Text('立即注册', style: TextStyle(color: primaryColors)),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(height: _safeAreaBottom),
            ],
          ),
        ),
      ),
    );
  }
}

