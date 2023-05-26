import 'package:flutter/material.dart';

class PlantCard {
  final String id;
  final String title;
  final String imageDir;
  final String country;
  final double price;

  const PlantCard(
      {required this.id,
      required this.title,
      required this.imageDir,
      required this.country,
      required this.price});
}
