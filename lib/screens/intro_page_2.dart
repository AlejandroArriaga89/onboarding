import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro2Screen extends StatelessWidget {
  const Intro2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey[350],
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Lottie.asset(
                'assets/animation/Animation-2.json',
                height: 250,
              ),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
              'Toyota ofrece comodidad excepcional en cada viaje: Con su reputación de calidad y durabilidad, los automóviles Toyota brindan una comodidad duradera y confiable, convirtiéndolos en la opción ideal para largos viajes y el uso diario.',
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
