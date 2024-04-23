import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';

class GalleryPage extends StatefulWidget {
  const GalleryPage({super.key});

  @override
  State<GalleryPage> createState() => _GalleryPageState();
}

class _GalleryPageState extends State<GalleryPage> {
  bool loading = false;
  @override
  void initState() {
    super.initState();
    loadData();
  }

  loadData() {
    setState(() {
      loading = true;
    });
    if (mounted) {
      setState(() {
        loading = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return loading
        ? const Center(
            child: CircularProgressIndicator(),
          )
        : LayoutBuilder(
            builder: (context, constraints) {
              if (constraints.maxWidth > 1440) {
                return const DesktopGalleryPage();
              } else if (constraints.maxWidth > 1024 &&
                  constraints.maxWidth <= 1440) {
                return const LaptopGalleryPage();
              } else if (constraints.maxWidth > 750 &&
                  constraints.maxWidth <= 1024) {
                return const TabletGalleryPage();
              } else {
                return const MobileGalleryPage();
              }
            },
          );
  }
}

class DesktopGalleryPage extends StatelessWidget {
  const DesktopGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.luxuryBlack,
      body: SingleChildScrollView(
        child: Column(
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
              child: const Image(
                image: AssetImage('assets/image/wawalogo.png'),
                width: 75,
                height: 75,
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
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(50),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/pic_18.JPG'),
                        fit: BoxFit.cover,
                        opacity: 0.4),
                  ),
                  child: const Text(
                    'G A L L E R Y',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            // Grid
            const SizedBox(height: 50),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.5,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      const Text(
                        'Yoga',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_1.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_4.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_5.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_6.JPG'),
                                  ),
                                )),
                          ]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Pilates',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_7.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_8.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_9.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_10.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Workout',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_11.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_12.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_13.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_14.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Boxing',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_15.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_16.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_17.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_18.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
          ],
        ),
      ),
    );
  }
}

class LaptopGalleryPage extends StatelessWidget {
  const LaptopGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.luxuryBlack,
      body: SingleChildScrollView(
        child: Column(
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
              child: const Image(
                image: AssetImage('assets/image/wawalogo.png'),
                width: 100,
                height: 100,
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
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(50),
                  height: MediaQuery.of(context).size.height / 2,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/pic_18.JPG'),
                        fit: BoxFit.cover,
                        opacity: 0.4),
                  ),
                  child: const Text(
                    'G A L L E R Y',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            // Grid
            const SizedBox(height: 50),

            SizedBox(
              height: MediaQuery.of(context).size.height * 2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      const Text(
                        'Yoga',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_1.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_4.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_5.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_6.JPG'),
                                  ),
                                )),
                          ]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Pilates',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_7.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_8.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_9.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_10.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Workout',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_11.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_12.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_13.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_14.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Boxing',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_15.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_16.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_17.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_18.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
          ],
        ),
      ),
    );
  }
}

class TabletGalleryPage extends StatelessWidget {
  const TabletGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.luxuryBlack,
      body: SingleChildScrollView(
        child: Column(
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
              child: const Image(
                image: AssetImage('assets/image/wawalogo.png'),
                width: 75,
                height: 75,
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
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(50),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/pic_18.JPG'),
                        fit: BoxFit.cover,
                        opacity: 0.4),
                  ),
                  child: const Text(
                    'G A L L E R Y',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: MediaQuery.of(context).size.height * 1.2,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: [
                  Column(
                    children: <Widget>[
                      const Text(
                        'Yoga',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 4.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_1.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 4.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_4.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 4.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_5.JPG'),
                                  ),
                                )),
                            SizedBox(
                                width: MediaQuery.of(context).size.width / 4.5,
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(10),
                                  child: const Image(
                                    image: AssetImage('assets/image/pic_6.JPG'),
                                  ),
                                )),
                          ]),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Pilates',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_7.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_8.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_9.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_10.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Workout',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_11.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_12.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_13.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_14.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 20),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 20),
                  Column(
                    children: <Widget>[
                      const Text(
                        'Boxing',
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      ),
                      const SizedBox(height: 10),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_15.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_16.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_17.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 4.5,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_18.JPG'),
                                ),
                              )),
                        ],
                      ),
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
          ],
        ),
      ),
    );
  }
}

class MobileGalleryPage extends StatelessWidget {
  const MobileGalleryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.luxuryBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                border: Border.all(
                  width: 10,
                  color: AppColor.luxuryYellow,
                ),
                color: AppColor.luxuryYellow,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Image(
                    image: AssetImage('assets/image/wawalogo.png'),
                    width: 100,
                    height: 50,
                  ),
                  PopupMenuButton(
                      icon: const Icon(Icons.menu),
                      color: AppColor.luxuryYellow,
                      onSelected: (value) {
                        if (value == 'Home') {
                          Navigator.pushNamed(context, '/home');
                        } else if (value == 'Profile') {
                          Navigator.pushNamed(context, '/profile');
                        } else if (value == 'Courses') {
                          Navigator.pushNamed(context, '/course');
                        } else if (value == 'Gallery') {
                          Navigator.pushNamed(context, '/gallery');
                        } else if (value == 'Contact') {
                          Navigator.pushNamed(context, '/contact');
                        }
                      },
                      itemBuilder: (context) => [
                            const PopupMenuItem(
                              value: 'Home',
                              child: Text('Home'),
                            ),
                            const PopupMenuItem(
                              value: 'Profile',
                              child: Text('Profile'),
                            ),
                            const PopupMenuItem(
                              value: 'Courses',
                              child: Text('Courses'),
                            ),
                            const PopupMenuItem(
                              value: 'Gallery',
                              child: Text('Gallery'),
                            ),
                            const PopupMenuItem(
                              value: 'Contact',
                              child: Text('Contact'),
                            )
                          ])
                ],
              ),
            ),
            Column(
              children: [
                Container(
                  alignment: Alignment.center,
                  padding: const EdgeInsets.all(50),
                  height: MediaQuery.of(context).size.height / 3,
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/image/pic_18.JPG'),
                        fit: BoxFit.cover,
                        opacity: 0.4),
                  ),
                  child: const Text(
                    'G A L L E R Y',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 50),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const Text(
                      'Yoga',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.7,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_1.JPG'),
                                ),
                              )),
                          SizedBox(
                              width: MediaQuery.of(context).size.width / 2.7,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage('assets/image/pic_4.JPG'),
                                ),
                              )),
                        ]),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_5.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_6.JPG'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Color(0xFFF9B17A),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Pilates',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_7.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_8.JPG'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_9.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_10.JPG'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Color(0xFFF9B17A),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Workout',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_11.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_12.JPG'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_13.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_14.JPG'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 20,
                      endIndent: 20,
                      color: Color(0xFFF9B17A),
                    ),
                    const SizedBox(height: 20),
                    const Text(
                      'Boxing',
                      style: TextStyle(fontSize: 30, color: Colors.white),
                    ),
                    const SizedBox(height: 10),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_15.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_16.JPG'),
                              ),
                            )),
                      ],
                    ),
                    const SizedBox(height: 20),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_17.JPG'),
                              ),
                            )),
                        SizedBox(
                            width: MediaQuery.of(context).size.width / 2.7,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(10),
                              child: const Image(
                                image: AssetImage('assets/image/pic_18.JPG'),
                              ),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20),
            Container(
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
          ],
        ),
      ),
    );
  }
}
