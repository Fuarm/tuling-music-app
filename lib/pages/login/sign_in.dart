import 'package:flutter/material.dart';
import 'package:tuling_music_app/theme.dart';
import 'package:tuling_music_app/utils/sizes.dart';

class SignIn extends StatefulWidget {

  const SignIn({Key? key}) : super(key: key);

  @override
  State<SignIn> createState() => _SignInState();
}

class _SignInState extends State<SignIn> {

  @override
  Widget build(BuildContext context) {
    final ButtonStyle style = ElevatedButton.styleFrom(
      onPrimary: Colors.white,
      textStyle: const TextStyle(fontSize: 16),
      padding: const EdgeInsets.all(14.0)
    );
    
    return Container(
      padding: EdgeInsets.only(
        left: Sizes.size42,
        right: Sizes.size42,
        top: Sizes.size48,
      ),
      child: Column(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text("登录",
                  style: TextStyle(
                    fontSize: 24,
                    color: primaryColors.shade700,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 6),
                const Text("欢迎来到图灵音乐",
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.grey
                  ),
                ),
                const SizedBox(height: 32),
                TextField(
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(fontSize: 16),
                    contentPadding: EdgeInsets.symmetric(horizontal: Sizes.size28, vertical: Sizes.size36),
                    border: const OutlineInputBorder(),
                    labelText: '用户名/手机号',
                  ),
                ),
                const SizedBox(height: 32),
                TextField(
                  obscureText: true,
                  style: const TextStyle(fontSize: 14),
                  decoration: InputDecoration(
                    floatingLabelStyle: const TextStyle(fontSize: 16),
                    contentPadding: EdgeInsets.symmetric(horizontal: Sizes.size28, vertical: Sizes.size36),
                    border: const OutlineInputBorder(),
                    labelText: '密码',
                  ),
                ),
                TextButton(
                  style: TextButton.styleFrom(
                    textStyle: const TextStyle(fontSize: 14),
                    primary: Colors.white,
                    padding: const EdgeInsets.all(0)
                  ),
                  onPressed: () {},
                  child: const Text('忘记密码？', style: TextStyle(color: primaryColors)),
                ),
                const SizedBox(height: 18),
                FractionallySizedBox(
                  widthFactor: 1,
                  child: ElevatedButton(
                    style: style,
                    onPressed: () {},
                    child: const Text("登录"),
                  ),
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text("没有账号?", style: TextStyle(color: Colors.grey)),
              TextButton(
                style: TextButton.styleFrom(
                  textStyle: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                  primary: Colors.white,
                  padding: const EdgeInsets.symmetric(vertical: 24),
                ),
                onPressed: () {},
                child: const Text('立即注册', style: TextStyle(color: primaryColors)),
              ),
            ],
          )
        ],
      ),
    );
  }
}
