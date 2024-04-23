import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ContactPage extends StatefulWidget {
  const ContactPage({super.key});

  @override
  State<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends State<ContactPage> {
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
                return const DesktopContactPage();
              } else if (constraints.maxWidth > 1024 &&
                  constraints.maxWidth <= 1440) {
                return const LaptopContactPage();
              } else if (constraints.maxWidth > 750 &&
                  constraints.maxWidth <= 1024) {
                return const TabletContactPage();
              } else {
                return const MobileContactPage();
              }
            },
          );
  }
}

class DesktopContactPage extends StatelessWidget {
  const DesktopContactPage({super.key});

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
                'C O N T A C T S',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  const Text(
                    'Contact Information',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Wawa Studio Yoga,',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            const Text(
                              'Pilates, and Workout',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Phone: +66 63-474-6519',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                var urlFB = Uri.parse(
                                    'https://www.facebook.com/profile.php?id=100063924585309');
                                if (await canLaunchUrl(urlFB)) {
                                  await launchUrl(urlFB);
                                } else {
                                  throw 'Could not launch $urlFB';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.squareFacebook,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: const Text('Wawastudio yoga and workout'),
                            ),
                            const Text(
                              'Whatsapp:',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            const Text(
                              'Line: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Map',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                var urlGM = Uri.parse(
                                    'https://www.google.com/maps/place/Wawa+studio+Phuket+Yoga+%26workout/@7.9433306,98.3565998,16z/data=!4m14!1m7!3m6!1s0x305031fdd61a54fd:0x312fe2cde54488fa!2sThe+River+Coffee+and+Food!8m2!3d7.942685!4d98.3602121!16s%2Fg%2F11f89n_4qv!3m5!1s0x305031b6d445fbd1:0xca5884799e1aaa5e!8m2!3d7.9425917!4d98.3601536!16s%2Fg%2F11t827tpjs?entry=ttu');
                                if (await canLaunchUrl(urlGM)) {
                                  await launchUrl(urlGM);
                                } else {
                                  throw 'Could not launch $urlGM';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.mapLocationDot,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: const Text(
                                  '13 ภูเก็ต บ้านเลขที่ 25 Ko Kaeo, \nMueang Phuket District, Phuket 83000'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Text(
                      'Image',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
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

class LaptopContactPage extends StatelessWidget {
  const LaptopContactPage({super.key});

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
                'C O N T A C T S',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  const Text(
                    'Contact Information',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Wawa Studio Yoga,',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            const Text(
                              'Pilates, and Workout',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Phone: +66 63-474-6519',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                var urlFB = Uri.parse(
                                    'https://www.facebook.com/profile.php?id=100063924585309');
                                if (await canLaunchUrl(urlFB)) {
                                  await launchUrl(urlFB);
                                } else {
                                  throw 'Could not launch $urlFB';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.squareFacebook,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: const Text('Wawastudio yoga and workout'),
                            ),
                            const Text(
                              'Whatsapp:',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            const Text(
                              'Line: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Map',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                var urlGM = Uri.parse(
                                    'https://www.google.com/maps/place/Wawa+studio+Phuket+Yoga+%26workout/@7.9433306,98.3565998,16z/data=!4m14!1m7!3m6!1s0x305031fdd61a54fd:0x312fe2cde54488fa!2sThe+River+Coffee+and+Food!8m2!3d7.942685!4d98.3602121!16s%2Fg%2F11f89n_4qv!3m5!1s0x305031b6d445fbd1:0xca5884799e1aaa5e!8m2!3d7.9425917!4d98.3601536!16s%2Fg%2F11t827tpjs?entry=ttu');
                                if (await canLaunchUrl(urlGM)) {
                                  await launchUrl(urlGM);
                                } else {
                                  throw 'Could not launch $urlGM';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.mapLocationDot,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: const Text(
                                  '13 ภูเก็ต บ้านเลขที่ 25 Ko Kaeo, \nMueang Phuket District, Phuket 83000'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Text(
                      'Image',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
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

class TabletContactPage extends StatelessWidget {
  const TabletContactPage({super.key});

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
                'C O N T A C T S',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  const Text(
                    'Contact Information',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Wawa Studio Yoga,',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            const Text(
                              'Pilates, and Workout',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            const SizedBox(height: 10),
                            const Text(
                              'Phone: +66 63-474-6519',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                var urlFB = Uri.parse(
                                    'https://www.facebook.com/profile.php?id=100063924585309');
                                if (await canLaunchUrl(urlFB)) {
                                  await launchUrl(urlFB);
                                } else {
                                  throw 'Could not launch $urlFB';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.squareFacebook,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: const Text('Wawastudio yoga and workout'),
                            ),
                            const Text(
                              'Whatsapp:',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            const Text(
                              'Line: ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                          ],
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Map',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            TextButton.icon(
                              onPressed: () async {
                                var urlGM = Uri.parse(
                                    'https://www.google.com/maps/place/Wawa+studio+Phuket+Yoga+%26workout/@7.9433306,98.3565998,16z/data=!4m14!1m7!3m6!1s0x305031fdd61a54fd:0x312fe2cde54488fa!2sThe+River+Coffee+and+Food!8m2!3d7.942685!4d98.3602121!16s%2Fg%2F11f89n_4qv!3m5!1s0x305031b6d445fbd1:0xca5884799e1aaa5e!8m2!3d7.9425917!4d98.3601536!16s%2Fg%2F11t827tpjs?entry=ttu');
                                if (await canLaunchUrl(urlGM)) {
                                  await launchUrl(urlGM);
                                } else {
                                  throw 'Could not launch $urlGM';
                                }
                              },
                              style: TextButton.styleFrom(
                                foregroundColor: Colors.white,
                                textStyle: const TextStyle(fontSize: 20),
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              icon: const FaIcon(
                                FontAwesomeIcons.mapLocationDot,
                                color: Colors.blue,
                                size: 20,
                              ),
                              label: const Text(
                                  '13 ภูเก็ต บ้านเลขที่ 25 Ko Kaeo, \nMueang Phuket District, Phuket 83000'),
                            ),
                          ],
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Text(
                      'Image',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
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

class MobileContactPage extends StatelessWidget {
  const MobileContactPage({super.key});

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
                    'C O N T A C T',
                    style: TextStyle(
                        fontSize: 40,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            SizedBox(
              height: MediaQuery.of(context).size.height,
              width: MediaQuery.of(context).size.width,
              child: Column(
                children: <Widget>[
                  const Text(
                    'Contact Information',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  Expanded(
                    flex: 1,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        const Text(
                          'Phone: +66 63-474-6519',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        TextButton.icon(
                          onPressed: () async {
                            var urlFB = Uri.parse(
                                'https://www.facebook.com/profile.php?id=100063924585309');
                            if (await canLaunchUrl(urlFB)) {
                              await launchUrl(urlFB);
                            } else {
                              throw 'Could not launch $urlFB';
                            }
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          icon: const FaIcon(
                            FontAwesomeIcons.squareFacebook,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text('Wawastudio yoga and workout'),
                        ),
                        const Text(
                          'Whatsapp:',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const Text(
                          'Line: ',
                          style: TextStyle(fontSize: 20, color: Colors.white),
                        ),
                        const SizedBox(height: 30),
                        const Text(
                          'Map',
                          style: TextStyle(fontSize: 26, color: Colors.white),
                        ),
                        TextButton.icon(
                          onPressed: () async {
                            var urlGM = Uri.parse(
                                'https://www.google.com/maps/place/Wawa+studio+Phuket+Yoga+%26workout/@7.9433306,98.3565998,16z/data=!4m14!1m7!3m6!1s0x305031fdd61a54fd:0x312fe2cde54488fa!2sThe+River+Coffee+and+Food!8m2!3d7.942685!4d98.3602121!16s%2Fg%2F11f89n_4qv!3m5!1s0x305031b6d445fbd1:0xca5884799e1aaa5e!8m2!3d7.9425917!4d98.3601536!16s%2Fg%2F11t827tpjs?entry=ttu');
                            if (await canLaunchUrl(urlGM)) {
                              await launchUrl(urlGM);
                            } else {
                              throw 'Could not launch $urlGM';
                            }
                          },
                          style: TextButton.styleFrom(
                            foregroundColor: Colors.white,
                            textStyle: const TextStyle(fontSize: 20),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(5)),
                          ),
                          icon: const FaIcon(
                            FontAwesomeIcons.mapLocationDot,
                            color: Colors.blue,
                            size: 20,
                          ),
                          label: const Text(
                              '13 ภูเก็ต บ้านเลขที่ 25 Ko Kaeo, \nMueang Phuket District, Phuket 83000'),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 20),
                  Container(
                    alignment: Alignment.center,
                    height: MediaQuery.of(context).size.height / 2,
                    width: MediaQuery.of(context).size.width,
                    decoration: const BoxDecoration(color: Colors.red),
                    child: const Text(
                      'Image',
                      style: TextStyle(color: Colors.white, fontSize: 50),
                    ),
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
