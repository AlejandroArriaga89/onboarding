import 'package:flutter/material.dart';
import 'package:onboarding/models/cars.dart';

final listCategory = ['Autos', 'Híbridos', 'Gazoo Racing'];

final listShoes = [
  Cars(
    'YARIS',
    'Sedan',
    '\$320.000',
    4,
    [
      ImageCars(
        'assets/cars/Y_1.png',
        const Color(0xffee1133),
      ),
      ImageCars(
        'assets/cars/Y_2.png',
        const Color.fromARGB(255, 187, 14, 40),
      ),
      ImageCars(
        'assets/cars/Y_3.png',
        const Color.fromARGB(255, 150, 14, 40),
      ),
      ImageCars(
        'assets/cars/Y_4.png',
        const Color.fromARGB(255, 100, 14, 40),
      ),
    ],
  ),
  Cars(
    'COROLLA',
    'Sedan',
    '\$550.00',
    3,
    [
      ImageCars(
        'assets/cars/C_1.png',
        const Color(0xffa2a2a3),
      ),
      ImageCars(
        'assets/cars/C_2.png',
        const Color.fromARGB(255, 150, 150, 150),
      ),
      ImageCars(
        'assets/cars/C_3.png',
        const Color.fromARGB(255, 100, 100, 100),
      ),
      ImageCars(
        'assets/cars/C_4.png',
        const Color.fromARGB(255, 50, 50, 50),
      ),
    ],
  ),
  Cars(
    'SUPRA',
    'Gazoo Racing',
    '\$1,443,900',
    4,
    [
      ImageCars(
        'assets/cars/S_1.png',
        const Color.fromARGB(255, 0, 106, 225),
      ),
      ImageCars(
        'assets/cars/S_2.png',
        const Color.fromARGB(255, 0, 76, 200),
      ),
      ImageCars(
        'assets/cars/S_3.png',
        const Color.fromARGB(255, 0, 56, 150),
      ),
      ImageCars(
        'assets/cars/S_4.png',
        const Color.fromARGB(255, 0, 26, 100),
      ),
    ],
  ),
];
