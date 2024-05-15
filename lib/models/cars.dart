import 'package:flutter/material.dart';

class ImageCars {
  ImageCars(
    this.image,
    this.color,
  );
  final String image;
  final Color color;
}

class Cars {
  Cars(
    this.name,
    this.category,
    this.price,
    this.punctuation,
    this.listImage,
  );
  final String name;
  final String category;
  final String price;
  final int punctuation;
  final List<ImageCars> listImage;
}
