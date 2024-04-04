import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.luxuryBlack,
      body: Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: AppColor.luxuryYellow,
              ),
              color: AppColor.luxuryYellow,
            ),
            child: const Text(
              'Wawa Studio',
              textAlign: TextAlign.center,
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          Container(
            decoration: BoxDecoration(
              border: Border.all(
                width: 0,
                color: AppColor.luxuryYellow,
              ),
              color: AppColor.luxuryYellow,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/home');
                    },
                    child: const Text(
                      'Home',
                      style: TextStyle(fontSize: 16),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                    child: const Text(
                      'Profile',
                      style: TextStyle(fontSize: 16),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/course');
                    },
                    child: const Text(
                      'Courses',
                      style: TextStyle(fontSize: 16),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/gallery');
                    },
                    child: const Text(
                      'Gallery',
                      style: TextStyle(fontSize: 16),
                    )),
                TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    child: const Text(
                      'Contacts',
                      style: TextStyle(fontSize: 16),
                    )),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        height: MediaQuery.of(context).size.height * 0.1,
        width: MediaQuery.of(context).size.width,
        decoration: const BoxDecoration(color: AppColor.luxuryYellow),
        child: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              '(c) Copyright Wawa Studio Co.,LTD 2024',
              style: TextStyle(
                color: AppColor.luxuryGrey,
                fontSize: 14,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
