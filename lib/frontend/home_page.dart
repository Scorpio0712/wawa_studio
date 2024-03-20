import 'package:flutter/material.dart';
import 'package:wawastudio/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = ['assets/image/pic_2.jpg'];

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
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/image/pic_2.jpg'),
                  fit: BoxFit.cover,
                  opacity: 0.4)),
          padding: const EdgeInsets.all(50),
          height: MediaQuery.of(context).size.height * 0.6,
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
                        onPressed: () {},
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
                        onPressed: () {},
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
              Stack(
                children: [
                  CarouselSlider(
                      items: generateImagesTiles(),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 18 / 8,
                      )),
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
