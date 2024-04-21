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
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: Colors.red),
              ),
              child: const Column(
                children: <Widget>[
                  Text(
                    'Contact Informations',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Wawa Studio Yoga, Pilates, and Workout',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            Text(
                              'Phone: +66 63-474-6519',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Facebook: Wawastudio yoga and workout ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Whatsapp:',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
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
                              Text(
                                'Map',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              )
                            ],
                          ))
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: Colors.red),
              ),
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
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            const Text(
                              'Wawa Studio Yoga, Pilates, and Workout',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
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
                      const Expanded(
                          flex: 1,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Text(
                                'Map',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              )
                            ],
                          ))
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
            Container(
              decoration: BoxDecoration(
                border: Border.all(width: 0, color: Colors.red),
              ),
              child: const Column(
                children: <Widget>[
                  Text(
                    'Contact Informations',
                    style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: <Widget>[
                      Expanded(
                        flex: 1,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: <Widget>[
                            Text(
                              'Wawa Studio Yoga, Pilates, and Workout',
                              style:
                                  TextStyle(fontSize: 26, color: Colors.white),
                            ),
                            Text(
                              'Phone: +66 63-474-6519',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Facebook: Wawastudio yoga and workout ',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
                              'Whatsapp:',
                              style:
                                  TextStyle(fontSize: 20, color: Colors.white),
                            ),
                            Text(
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
                              Text(
                                'Map',
                                style: TextStyle(
                                    fontSize: 26, color: Colors.white),
                              )
                            ],
                          ))
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
                    'C O N T A C T S',
                    style: TextStyle(
                        fontSize: 50,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Column(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  decoration: BoxDecoration(
                    border: Border.all(width: 0, color: Colors.red),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: <Widget>[
                      Text(
                        'Wawa Studio Yoga',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      Text(
                        'Pilates and Workout',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Phone: +66 63-474-6519',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      TextButton(
                        onPressed: () async {
                          var urlFB = Uri.https(
                              'https://www.facebook.com/Gun.Scorpio/');
                          if (await canLaunchUrl(urlFB)) {
                            await launchUrl(urlFB);
                          } else {
                            throw 'Could not launch $urlFB';
                          }
                        },
                        child: Text(
                          'FB: Wawastudio yoga and workout ',
                          style: TextStyle(fontSize: 18, color: Colors.white),
                        ),
                      ),
                      Text(
                        'Whatsapp:',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      Text(
                        'Line: ',
                        style: TextStyle(fontSize: 18, color: Colors.white),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Map',
                        style: TextStyle(fontSize: 26, color: Colors.white),
                      ),
                    ],
                  ),
                ),
              ],
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
