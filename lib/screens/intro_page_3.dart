import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class Intro3Screen extends StatelessWidget {
  const Intro3Screen({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.blue,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Lottie.asset('assets/animation/Animation-4.json'),
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
                'La marca Toyota se distingue por su enfoque en el confort del conductor y los pasajeros, proporcionando interiores espaciosos, asientos ergonómicos y tecnología innovadora que garantizan una experiencia de conducción relajante.'),
          ),
        ],
      ),
    );
  }
}
