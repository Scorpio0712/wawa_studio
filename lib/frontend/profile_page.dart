import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        : LayoutBuilder(builder: (context, constraints) {
            if (constraints.maxWidth > 1440) {
              return const DesktopProfilePage();
            } else if (constraints.maxWidth > 1024 &&
                constraints.maxWidth <= 1440) {
              return const LaptopProfilePage();
            } else if (constraints.maxWidth > 750 &&
                constraints.maxWidth <= 1024) {
              return const TabletProfilePage();
            } else {
              return const MobileProfilePage();
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
              child: const Image(
                image: AssetImage('assets/image/wawalogo.png'),
                width: 125,
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
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 25, right: 25),
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
                        padding: const EdgeInsets.only(left: 25, right: 25),
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
              alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              height: MediaQuery.of(context).size.height / 2,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.3),
              ),
              child: const Text(
                'P R O F I L E',
                style: TextStyle(
                    fontSize: 72,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 275,
                  width: 275,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/Profile.JPG',
                          ))),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: const Column(children: <Widget>[
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Miss Kulwarynt Sitthithananrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 35,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Owner of Wawa studio Yoga, Pilates, and Workout',
                          style: TextStyle(color: Colors.white, fontSize: 20),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    SizedBox(height: 20),
                    Divider(
                      height: 20,
                      thickness: 2,
                      indent: 25,
                      endIndent: 25,
                      color: Color(0xFFF9B17A),
                    ),
                    SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        Text(
                          'Certificates',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 26,
                          ),
                        ),
                        SizedBox(height: 30),
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
                            fontSize: 20,
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

class LaptopProfilePage extends StatelessWidget {
  const LaptopProfilePage({super.key});

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
                height: 75,
              ),
            ),
            Container(
              decoration: const BoxDecoration(
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
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      'Home',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/profile');
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Profile',
                        style: TextStyle(fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/course');
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Courses',
                        style: TextStyle(fontSize: 18),
                      )),
                  TextButton(
                      onPressed: () {
                        Navigator.pushNamed(context, '/gallery');
                      },
                      style: TextButton.styleFrom(
                          padding: const EdgeInsets.only(left: 20, right: 20),
                          tapTargetSize: MaterialTapTargetSize.padded,
                          alignment: Alignment.centerLeft),
                      child: const Text(
                        'Gallery',
                        style: TextStyle(fontSize: 18),
                      )),
                  TextButton(
                    onPressed: () {
                      Navigator.pushNamed(context, '/contact');
                    },
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 20, right: 20),
                        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        alignment: Alignment.centerLeft),
                    child: const Text(
                      'Contacts',
                      style: TextStyle(fontSize: 18),
                    ),
                  ),
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
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.3),
              ),
              child: const Text(
                'P R O F I L E',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
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
                            'assets/image/Profile.JPG',
                          ))),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  child: Column(children: <Widget>[
                    const Column(
                      children: <Widget>[
                        Text(
                          'Miss Kulwarynt Sitthithananrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                          textAlign: TextAlign.center,
                        ),
                        Text(
                          'Owner of Wawa studio Yoga, Pilates, and Workout',
                          style: TextStyle(color: Colors.white, fontSize: 16),
                          textAlign: TextAlign.center,
                        ),
                      ],
                    ),
                    const SizedBox(height: 20),
                    const Divider(
                      height: 20,
                      thickness: 2,
                      indent: 75,
                      endIndent: 75,
                      color: Color(0xFFF9B17A),
                    ),
                    const SizedBox(height: 20),
                    Column(
                      children: <Widget>[
                        const Text(
                          'Certificates',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        const SizedBox(height: 20),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.25,
                          child: const Text(
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
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
              child: const Image(
                image: AssetImage('assets/image/wawalogo.png'),
                width: 100,
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
                    style: TextButton.styleFrom(
                        padding: const EdgeInsets.only(left: 20, right: 20),
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
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
                          padding: const EdgeInsets.only(left: 20, right: 20),
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
                        padding: const EdgeInsets.only(left: 20, right: 20),
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
              alignment: Alignment.center,
              padding: const EdgeInsets.all(50),
              height: MediaQuery.of(context).size.height / 3,
              width: MediaQuery.of(context).size.width,
              decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/image/Head_2.JPG'),
                    fit: BoxFit.cover,
                    opacity: 0.3),
              ),
              child: const Text(
                'P R O F I L E',
                style: TextStyle(
                    fontSize: 50,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
            const SizedBox(
              height: 50,
            ),
            Column(
              children: <Widget>[
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/Profile.JPG',
                          ))),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(children: <Widget>[
                    const Column(
                      mainAxisSize: MainAxisSize.max,
                      children: <Widget>[
                        Text(
                          'Miss Kulwarynt Sitthithananrat',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
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
                          'Certificates',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 28,
                          ),
                        ),
                        const SizedBox(height: 10),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.25,
                          child: const Text(
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
                            style: const TextStyle(
                              color: Colors.white,
                              fontSize: 16,
                            ),
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
                        child: const Text(
                          'Home',
                          style: TextStyle(color: AppColor.luxuryRed),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Navigator.pushNamed(context, '/profile');
                        },
                        child: const Text(
                          'Profile',
                          style: TextStyle(color: AppColor.luxuryRed),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Navigator.pushNamed(context, '/course');
                        },
                        child: const Text(
                          'Courses',
                          style: TextStyle(color: AppColor.luxuryRed),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Navigator.pushNamed(context, '/gallery');
                        },
                        child: const Text(
                          'Gallery',
                          style: TextStyle(color: AppColor.luxuryRed),
                        ),
                      ),
                      PopupMenuItem(
                        onTap: () {
                          Navigator.pushNamed(context, '/contact');
                        },
                        child: const Text(
                          'Contact',
                          style: TextStyle(color: AppColor.luxuryRed),
                        ),
                      ),
                    ],
                  )
                ],
              ),
            ),
            Column(
              children: <Widget>[
                Column(
                  children: <Widget>[
                    Container(
                      alignment: Alignment.center,
                      padding: const EdgeInsets.all(50),
                      height: MediaQuery.of(context).size.height / 3,
                      width: MediaQuery.of(context).size.width,
                      decoration: const BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage('assets/image/Head_2.JPG'),
                            fit: BoxFit.cover,
                            opacity: 0.3),
                      ),
                      child: const Text(
                        'P R O F I L E',
                        style: TextStyle(
                            fontSize: 40,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                  ],
                ),
                const SizedBox(height: 50),
                Container(
                  height: 175,
                  width: 175,
                  decoration: BoxDecoration(
                      border: Border.all(style: BorderStyle.none),
                      shape: BoxShape.circle,
                      image: const DecorationImage(
                          fit: BoxFit.fill,
                          image: AssetImage(
                            'assets/image/Profile.JPG',
                          ))),
                ),
                const SizedBox(height: 20),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.9,
                  child: Column(children: <Widget>[
                    const Column(
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
                          'Owner of Wawa studio Yoga, Pilates, and Workout',
                          style: TextStyle(color: Colors.white, fontSize: 14),
                          textAlign: TextAlign.center,
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
                          'Certificates',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 20,
                          ),
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width / 1.25,
                          child: const Text(
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
