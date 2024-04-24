import 'package:firebase_core/firebase_core.dart';
import 'firebase_options.dart';
import 'package:flutter/material.dart';
import 'package:wawastudio/frontend/contact_page.dart';
import 'package:wawastudio/frontend/course_page.dart';
import 'package:wawastudio/frontend/gallery_page.dart';
import 'package:wawastudio/frontend/profile_page.dart';

import 'frontend/home_page.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(fontFamily: 'YesevaOne'),
      routes: {
        '/home': (context) => const HomePage(),
        '/profile': (context) => const ProfilePage(),
        '/contact': (context) => const ContactPage(),
        '/course': (context) => const CoursePage(),
        '/gallery': (context) => const GalleryPage(),
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
