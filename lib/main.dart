import 'package:flutter/material.dart';
import 'package:wawastudio/frontend/profile_page.dart';

import 'frontend/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: const HomePage(),
      routes: {
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
      },
    );
  }
}

class AppColor {
  static const Color luxuryYellow = Color(0xffffe5a9);
  static const Color luxuryBlack = Color(0xff423f3b);
  static const Color luxuryBlue = Color(0xff525266);
  static const Color luxuryRed = Color(0xffff6666);
  static const Color luxuryGrey = Color(0xffcbbeb5);
}
