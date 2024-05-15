import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro1Screen extends StatelessWidget {
  const Intro1Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Lottie.asset('assets/animation/Animation-5.json'),
            ),
          ),
          const SizedBox(
            height: 30,
          ),
          const Padding(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
            ),
            child: Text(
                'Los vehículos Toyota ofrecen una combinación excepcional de potencia y eficiencia, permitiendo una conducción ágil y fluida en todo tipo de condiciones.'),
          ),
        ],
      ),
    );
  }
}
