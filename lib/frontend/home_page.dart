import 'package:flutter/material.dart';

import 'package:wawastudio/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
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
                return DesktopHomePage();
              } else if (constraints.maxWidth > 1024 &&
                  constraints.maxWidth <= 1440) {
                return LaptopHomePage();
              } else if (constraints.maxWidth > 750 &&
                  constraints.maxWidth <= 1024) {
                return TabletHomePage();
              } else {
                return MobileHomePage();
              }
            },
          );
  }
}

class DesktopHomePage extends StatelessWidget {
  DesktopHomePage({super.key});

  final List<String> imgList = [
    'assets/image/Yoga_1.JPG',
    'assets/image/Boxing_1.JPG',
    'assets/image/Pilates_2.JPG',
    'assets/image/Workout_4.JPG',
    'assets/image/Workshop_4.JPG',
  ];

  List<Widget> generateImagesTiles() {
    return imgList
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.luxuryBlack,
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                color: AppColor.luxuryYellow,
              ),
              child: const Image(
                image: AssetImage('assets/image/wawalogo.png'),
                width: 125,
                height: 100,
              ),
            ),
            Container(
              decoration: BoxDecoration(
                border: Border.all(
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
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(right: 25),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      'Home',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Profile',
                        style: TextStyle(fontSize: 20),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/course');
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Courses',
                        style: TextStyle(fontSize: 20),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/gallery');
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 25, right: 25),
                          tapTargetSize: MaterialTapTargetSize.padded,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Gallery',
                        style: TextStyle(fontSize: 20),
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 25),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      'Contacts',
                      style: TextStyle(fontSize: 20),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.4),
              ),
              padding: const EdgeInsets.all(50),
              height: MediaQuery.of(context).size.height * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Wawa Studio Yoga,\nPilates, and workout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 50),
                      ),
                      Row(
                        children: [
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 24),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              icon: const Icon(Icons.person),
                              label: const Text('Profile'),
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          SizedBox(
                            width: 150,
                            height: 40,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/contact');
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 24),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                              ),
                              icon: const Icon(Icons.call),
                              label: const Text('Contact'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 2,
                        width: MediaQuery.of(context).size.width / 2,
                        child: CarouselSlider(
                          items: generateImagesTiles(),
                          options: CarouselOptions(
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 18 / 8,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 150),
            SizedBox(
              height: 1250,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Founder',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const Text(
                            'ประสบการณ์แวดวงครูสอนโยคะมากกว่า 7 ปี',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            label: const Text(
                              'Profile',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage(
                                      'assets/image/Home_Founder.JPG'),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image:
                                      AssetImage('assets/image/Pilates_5.JPG'),
                                ),
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Courses',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const Text(
                            'มีคอร์สออกกำลังกายมากมายให้เลือกเรียน',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/course');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            label: const Text(
                              'Courses',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 150,
                    endIndent: 150,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Gallery',
                            style: TextStyle(fontSize: 40, color: Colors.white),
                          ),
                          const Text(
                            'เครื่องออกกำลังกายครอบคลุมทุกส่วน',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 10),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/gallery');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            label: const Text(
                              'Contact',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image:
                                      AssetImage('assets/image/Workout_3.JPG'),
                                ),
                              ))
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

class LaptopHomePage extends StatelessWidget {
  LaptopHomePage({super.key});

  final List<String> imgList = [
    'assets/image/Yoga_1.JPG',
    'assets/image/Boxing_1.JPG',
    'assets/image/Pilates_2.JPG',
    'assets/image/Workout_4.JPG',
    'assets/image/Workshop_4.JPG',
  ];

  List<Widget> generateImagesTiles() {
    return imgList
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

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
                    ),
                  ),
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
                    ),
                  ),
                ],
              ),
            ),
            Container(
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.4),
              ),
              padding: const EdgeInsets.all(50),
              height: MediaQuery.of(context).size.height * 0.9,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Wawa Studio Yoga\nPilates, and workout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      Row(
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            icon: const Icon(Icons.person),
                            label: const Text('Profile'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 16),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            icon: const Icon(Icons.call),
                            label: const Text('Contact'),
                          )
                        ],
                      )
                    ],
                  ),
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 3,
                        child: CarouselSlider(
                          items: generateImagesTiles(),
                          options: CarouselOptions(
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 18 / 8,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 150),
            SizedBox(
              height: 1250,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Founder',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'ประสบการณ์แวดวงครูสอนโยคะมากกว่า 7 ปี',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage(
                                      'assets/image/Home_Founder.JPG'),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image:
                                      AssetImage('assets/image/Pilates_5.JPG'),
                                ),
                              ))
                        ],
                      ),
                      const Column(
                        children: [
                          Text(
                            'Courses',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'มีคอร์สออกกำลังกายมากมายให้เลือกเรียน',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          Text(
                            'Gallery',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          Text(
                            'เครื่องออกกำลังกายครอบคลุมทุกส่วน',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              width: 400,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image:
                                      AssetImage('assets/image/Workout_3.JPG'),
                                ),
                              ))
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

class TabletHomePage extends StatelessWidget {
  TabletHomePage({super.key});

  final List<String> imgList = [
    'assets/image/Yoga_1.JPG',
    'assets/image/Boxing_1.JPG',
    'assets/image/Pilates_2.JPG',
    'assets/image/Workout_4.JPG',
    'assets/image/Workshop_4.JPG',
  ];

  List<Widget> generateImagesTiles() {
    return imgList
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(15.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

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
                    ),
                  ),
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              height: MediaQuery.of(context).size.height * 0.9,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        'Wawa Studio Yoga',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      const Text(
                        'Pilates and workout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 35),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            icon: const Icon(Icons.person),
                            label: const Text('Profile'),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          TextButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/contact');
                            },
                            style: TextButton.styleFrom(
                              backgroundColor: Colors.green,
                              foregroundColor: Colors.white,
                              textStyle: const TextStyle(fontSize: 20),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(5)),
                            ),
                            icon: const Icon(Icons.call),
                            label: const Text('Contact'),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 10),
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: CarouselSlider(
                          items: generateImagesTiles(),
                          options: CarouselOptions(
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 18 / 8,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 150),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Founder',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const Text(
                            'ประสบการณ์แวดวงครูสอนโยคะมากกว่า 7 ปี',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/profile');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            label: const Text(
                              'Profile',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              width: 300,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image: AssetImage(
                                      'assets/image/Home_Founder.JPG'),
                                ),
                              ))
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          SizedBox(
                              width: 300,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image:
                                      AssetImage('assets/image/Pilates_5.JPG'),
                                ),
                              ))
                        ],
                      ),
                      Column(
                        children: [
                          const Text(
                            'Courses',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const Text(
                            'ประสบการณ์แวดวงครูสอนโยคะมากกว่า 7 ปี',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/course');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            label: const Text(
                              'Courses',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Column(
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: <Widget>[
                          const Text(
                            'Gallery',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const Text(
                            'ประสบการณ์แวดวงครูสอนโยคะมากกว่า 7 ปี',
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                          const SizedBox(height: 20),
                          ElevatedButton.icon(
                            onPressed: () {
                              Navigator.pushNamed(context, '/gallery');
                            },
                            style: ElevatedButton.styleFrom(
                              backgroundColor: Colors.red,
                              foregroundColor: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10.0)),
                            ),
                            icon: const Icon(
                              Icons.arrow_right,
                              size: 20,
                            ),
                            label: const Text(
                              'Gallery',
                              style: TextStyle(fontSize: 20),
                            ),
                          ),
                        ],
                      ),
                      Column(
                        children: [
                          SizedBox(
                              width: 300,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(10),
                                child: const Image(
                                  image:
                                      AssetImage('assets/image/Workout_3.JPG'),
                                ),
                              ))
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

class MobileHomePage extends StatelessWidget {
  MobileHomePage({super.key});

  final List<String> imgList = [
    'assets/image/Yoga_1.JPG',
    'assets/image/Boxing_1.JPG',
    'assets/image/Pilates_2.JPG',
    'assets/image/Workout_4.JPG',
    'assets/image/Workshop_4.JPG',
  ];

  List<Widget> generateImagesTiles() {
    return imgList
        .map((element) => ClipRRect(
              borderRadius: BorderRadius.circular(10.0),
              child: Image.asset(
                element,
                fit: BoxFit.cover,
              ),
            ))
        .toList();
  }

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
                      itemBuilder: (context) => [
                            PopupMenuItem(
                              onTap: () {
                                Navigator.pushNamed(context, '/home');
                              },
                              child: const Text('Home'),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              child: const Text('Profile'),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                Navigator.pushNamed(context, '/course');
                              },
                              child: const Text('Courses'),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                Navigator.pushNamed(context, '/gallery');
                              },
                              child: const Text('Gallery'),
                            ),
                            PopupMenuItem(
                              onTap: () {
                                Navigator.pushNamed(context, '/contact');
                              },
                              child: const Text('Contact'),
                            ),
                          ])
                ],
              ),
            ),
            Container(
              padding: const EdgeInsets.all(50),
              height: MediaQuery.of(context).size.height * 0.9,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.3),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const Text(
                        'Wawa Studio Yoga',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      const Text(
                        'Pilates and workout',
                        style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 25),
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 120,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/profile');
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.red,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const Icon(Icons.person),
                              label: const Text('Profile'),
                            ),
                          ),
                          const SizedBox(
                            width: 8,
                          ),
                          SizedBox(
                            width: 120,
                            child: TextButton.icon(
                              onPressed: () {
                                Navigator.pushNamed(context, '/contact');
                              },
                              style: TextButton.styleFrom(
                                backgroundColor: Colors.green,
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 16),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const Icon(Icons.call),
                              label: const Text('Contact'),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                  const SizedBox(height: 30),
                  Stack(
                    children: [
                      SizedBox(
                        height: MediaQuery.of(context).size.height / 3,
                        width: MediaQuery.of(context).size.width / 1.5,
                        child: CarouselSlider(
                          items: generateImagesTiles(),
                          options: CarouselOptions(
                            viewportFraction: 1,
                            enlargeCenterPage: true,
                            autoPlay: true,
                            aspectRatio: 18 / 8,
                          ),
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            const SizedBox(height: 150),
            SizedBox(
              height: 1500,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Founder',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 350,
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(10),
                          child: const Image(
                            image: AssetImage('assets/image/Home_Founder.JPG'),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      const Text(
                        'ประสบการณ์แวดวงครูสอนโยคะมากกว่า 7 ปี',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        icon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                        ),
                        label: const Text(
                          'Profile',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Courses',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                          width: 350,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: AssetImage('assets/image/Pilates_5.JPG'),
                            ),
                          )),
                      const SizedBox(height: 20),
                      const Text(
                        'มีคอร์สออกกำลังกายมากมายให้เลือกเรียน',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/course');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        icon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                        ),
                        label: const Text(
                          'Courses',
                          style: TextStyle(fontSize: 20),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 50),
                  const Divider(
                    height: 20,
                    thickness: 2,
                    indent: 20,
                    endIndent: 20,
                    color: Color(0xFFF9B17A),
                  ),
                  const SizedBox(height: 50),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      const Text(
                        'Gallery',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                          width: 350,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(10),
                            child: const Image(
                              image: AssetImage('assets/image/Workout_3.JPG'),
                            ),
                          )),
                      const SizedBox(height: 20),
                      const Text(
                        'เครื่องออกกำลังกายครอบคลุมทุกส่วน',
                        style: TextStyle(fontSize: 20, color: Colors.white),
                      ),
                      const SizedBox(height: 20),
                      TextButton.icon(
                        onPressed: () {
                          Navigator.pushNamed(context, '/gallery');
                        },
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.red,
                          foregroundColor: Colors.white,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10.0)),
                        ),
                        icon: const Icon(
                          Icons.arrow_right,
                          size: 20,
                        ),
                        label: const Text(
                          'Gallery',
                          style: TextStyle(fontSize: 20),
                        ),
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
