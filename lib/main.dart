import 'package:flutter/material.dart';
import 'package:tuling_music_app/pages/home.dart';
import 'package:tuling_music_app/pages/login.dart';
import 'package:tuling_music_app/theme.dart';

void main() {
  runApp(const TuLingMusic());
}

class TuLingMusic extends StatelessWidget {
  const TuLingMusic({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: '图灵音乐',
      theme: ThemeData(
        primarySwatch: primaryColors,
        tabBarTheme: tabBarTheme,
      ),
      initialRoute: '/',
      routes: {
        '/': (context) => const Home(),
        '/login': (context) => const Login()
      },
    );
  }
}
