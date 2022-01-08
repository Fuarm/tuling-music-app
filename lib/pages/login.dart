import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';
import 'package:tuling_music_app/widget/sign_in.dart';
import 'package:tuling_music_app/widget/sign_up.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> with TickerProviderStateMixin {

  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: primaryColors,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: SafeArea(
            bottom: false,
            child: Column(
              children: [
                SizedBox(height: Sizes.size54 * 4),
                Flexible(
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(15),
                        topRight: Radius.circular(15)
                      )
                    ),
                    child: SafeArea(
                      top: false,
                      child: Column(
                        children: [
                          TabBar(
                            controller: _tabController,
                            tabs: const [
                              Tab(text: "登录"),
                              Tab(text: "注册"),
                            ]
                          ),
                          Flexible(
                            child: TabBarView(
                              controller: _tabController,
                              children: const [
                                SignIn(),
                                SignUp(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}