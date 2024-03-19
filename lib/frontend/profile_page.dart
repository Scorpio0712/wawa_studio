import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.luxuryBlack,
        body: SingleChildScrollView(
          child: Column(children: [
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
                      onPressed: () {},
                      child: const Text(
                        'Courses',
                        style: TextStyle(fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Gallery',
                        style: TextStyle(fontSize: 16),
                      )),
                  TextButton(
                      onPressed: () {},
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
                  width: MediaQuery.of(context).size.width,
                  decoration: const BoxDecoration(color: Colors.red),
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
            )
          ]),
        ));
  }
}
