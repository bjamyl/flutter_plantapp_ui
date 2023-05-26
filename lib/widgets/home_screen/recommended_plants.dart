import 'package:flutter/material.dart';
import '../../dummy_data.dart';
import './recommended_plant_card.dart';

class RecommendedPlants extends StatelessWidget {
  const RecommendedPlants({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: DUMMMY_PLANTS_CARDS
          .map((cardData) => RecommendedPlantCard(
              title: cardData.title,
              image: cardData.imageDir,
              country: cardData.country,
              price: cardData.price))
          .toList(),
    );
  }
}
