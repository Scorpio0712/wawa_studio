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
      body: Column(children: [
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
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 225,
              width: 225,
              decoration: BoxDecoration(
                  border: Border.all( style: BorderStyle.none),
                  shape: BoxShape.circle,
                  
                  image: DecorationImage(
                      fit: BoxFit.fill,
                      image: AssetImage(
                        'assets/image/pic_3.jpg',
                      ))),
            )
          ],
        )
      ]),
    );
  }
}
