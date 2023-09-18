import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  CarouselController carouselController = CarouselController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Hotels App')),
      body: CarouselSlider(
        // carouselController: carouselController,
        items: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/p1.png'),
              ),
            ),
          ),
          Container(
            color: randomColors[1],
          ),
          Container(
            color: randomColors[2],
          ),
          Container(
            color: randomColors[3],
          ),
          Container(
            color: randomColors[4],
          ),
        ],
        options: CarouselOptions(),
      ),
    );
  }
}

List<Color> randomColors = [
  Colors.red,
  Colors.orangeAccent,
  Colors.orange,
  Colors.greenAccent,
  Colors.green,
  Colors.pink,
  Colors.pinkAccent,
  Colors.purple,
  Colors.purpleAccent,
];
