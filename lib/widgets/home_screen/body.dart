import 'package:flutter/material.dart';
import './header_with_searchbox.dart';
import './recommended_title.dart';
import './recommended_plants.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return SingleChildScrollView(
      child: Column(
        children: [
          HeaderWithSearchBox(size: size),
          const RecommendedTitle(),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: RecommendedPlants(),
          )
        ],
      ),
    );
  }
}
