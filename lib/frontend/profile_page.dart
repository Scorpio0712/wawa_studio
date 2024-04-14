import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > 1200) {
        return DesktopProfilePage();
      } else if (constraints.maxWidth > 800 && constraints.maxWidth < 1200) {
        return TabletProfilePage();
      } else {
        return MobileProfilePage();
      }
    });
  }
}

class DesktopProfilePage extends StatelessWidget {
  const DesktopProfilePage({super.key});

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
            const SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 225,
                  width: 225,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/pic_3.jpg',
                          ))),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Column(children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Miss Kulwarynt Sitthithananrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Owner of Wawa studio Yoga, Pilates and Workout',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Certificates',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2017 - Ashtanga Yoga Training by Healthy Ning Yoga\n'
                          '2018 - TTC(Teacher Training) Yoga Training by Shivanantha Thailand\n'
                          '2019 - Hatha Vinyasa (Anusara) Yoga training by Healthy Ning Yoga\n'
                          '2019 - Anatomy and Fascia (Anatomy Course at Mahidol University)\n'
                          '2019 - Fusion Exercise by Mister Wannarat(Yai) Yaiyong, Physical Therapist\n'
                          '2020 - SCO PHK (Scoliosis Beginner Exercise)\n'
                          '2020 - Function system Exercise by Mister Wannarat(Yai) Yaiyong, Physical Therapist\n'
                          '2021 - Correction Muscle Imbalance Training by\n'
                          '2021 - 3D Breathing Training (Breathewith the correct movement of core muscle and diaphragm)\n'
                          '2022 - Posture Connection Course at Huachiew Chalermprakiet University\n'
                          '2022 - Sport Massage for Upper and Lower body parts at Fixme Medical and Physiotherapy Clinic\n'
                          '2022 - PESA Personal Trainer Course\n'
                          '2023 - Rehab Exercise Pilates Course (Based on movement subsystem) and DNS Exercise (Suitable for patients with Ortho and Neuro Parkinson Diseases)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ]),
                )
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

class TabletProfilePage extends StatelessWidget {
  const TabletProfilePage({super.key});

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
            const SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 225,
                  width: 225,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/pic_3.jpg',
                          ))),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Column(children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Miss Kulwarynt Sitthithananrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Owner of Wawa studio Yoga, Pilates and Workout',
                          style: TextStyle(color: Colors.white, fontSize: 18),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 20,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Certificates',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2017 - Ashtanga Yoga Training by Healthy Ning Yoga\n'
                          '2018 - TTC(Teacher Training) Yoga Training by Shivanantha Thailand\n'
                          '2019 - Hatha Vinyasa (Anusara) Yoga training by Healthy Ning Yoga\n'
                          '2019 - Anatomy and Fascia (Anatomy Course at Mahidol University)\n'
                          '2019 - Fusion Exercise by Mister Wannarat(Yai) Yaiyong, Physical Therapist\n'
                          '2020 - SCO PHK (Scoliosis Beginner Exercise)\n'
                          '2020 - Function system Exercise by Mister Wannarat(Yai) Yaiyong, Physical Therapist\n'
                          '2021 - Correction Muscle Imbalance Training by\n'
                          '2021 - 3D Breathing Training (Breathewith the correct movement of core muscle and diaphragm)\n'
                          '2022 - Posture Connection Course at Huachiew Chalermprakiet University\n'
                          '2022 - Sport Massage for Upper and Lower body parts at Fixme Medical and Physiotherapy Clinic\n'
                          '2022 - PESA Personal Trainer Course\n'
                          '2023 - Rehab Exercise Pilates Course (Based on movement subsystem) and DNS Exercise (Suitable for patients with Ortho and Neuro Parkinson Diseases)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 16,
                          ),
                        )
                      ],
                    ),
                  ]),
                )
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

class MobileProfilePage extends StatelessWidget {
  const MobileProfilePage({super.key});

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
                  const Text(
                    'Wawa Studio',
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
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
            const SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 225,
                  width: 225,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/pic_3.jpg',
                          ))),
                ),
                const SizedBox(height: 20),
                Container(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Column(children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Miss Kulwarynt Sitthithananrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Owner of Wawa studio Yoga, Pilates and Workout',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Column(
                      children: <Widget>[
                        Text(
                          'Certificates',
                          style: TextStyle(
                              color: Colors.white,
                              fontSize: 18,
                              fontWeight: FontWeight.bold),
                        ),
                        Text(
                          '2017 - Ashtanga Yoga Training by Healthy Ning Yoga\n'
                          '2018 - TTC(Teacher Training) Yoga Training by Shivanantha Thailand\n'
                          '2019 - Hatha Vinyasa (Anusara) Yoga training by Healthy Ning Yoga\n'
                          '2019 - Anatomy and Fascia (Anatomy Course at Mahidol University)\n'
                          '2019 - Fusion Exercise by Mister Wannarat(Yai) Yaiyong, Physical Therapist\n'
                          '2020 - SCO PHK (Scoliosis Beginner Exercise)\n'
                          '2020 - Function system Exercise by Mister Wannarat(Yai) Yaiyong, Physical Therapist\n'
                          '2021 - Correction Muscle Imbalance Training by\n'
                          '2021 - 3D Breathing Training (Breathewith the correct movement of core muscle and diaphragm)\n'
                          '2022 - Posture Connection Course at Huachiew Chalermprakiet University\n'
                          '2022 - Sport Massage for Upper and Lower body parts at Fixme Medical and Physiotherapy Clinic\n'
                          '2022 - PESA Personal Trainer Course\n'
                          '2023 - Rehab Exercise Pilates Course (Based on movement subsystem) and DNS Exercise (Suitable for patients with Ortho and Neuro Parkinson Diseases)',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 14,
                          ),
                        )
                      ],
                    ),
                  ]),
                )
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
