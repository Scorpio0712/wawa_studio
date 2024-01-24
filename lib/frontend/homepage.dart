import 'package:flutter/material.dart';
import 'package:web_coperation/main.dart';
import 'package:carousel_slider/carousel_slider.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final List<String> imgList = [
    
    'assets/image/pic_2.jpg'
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
              TextButton(onPressed: () {}, child: const Text('Home')),
              TextButton(onPressed: () {}, child: const Text('Profile')),
              TextButton(onPressed: () {}, child: const Text('Courses')),
              TextButton(onPressed: () {}, child: const Text('Gallery')),
              TextButton(onPressed: () {}, child: const Text('Contacts')),
            ],
          ),
        ),
        const SizedBox(height: 20),
        Container(
          padding: EdgeInsets.only(top: 50),
          height: MediaQuery.of(context).size.height * 0.5,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              const Text(
                'Wawa Studio Yoga',
                style: TextStyle(
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontSize: 35),
              ),
              Stack(
                children: [
                  CarouselSlider(
                      items: generateImagesTiles(),
                      options: CarouselOptions(
                        enlargeCenterPage: true,
                        autoPlay: true,
                        aspectRatio: 18/8,
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
