import 'package:flutter/material.dart';
import '../../constants.dart';

class RecommendedPlantCard extends StatelessWidget {
  const RecommendedPlantCard(
      {super.key,
      required this.title,
      required this.image,
      required this.country,
      required this.price, required this.press});

  final String title, image, country;
  final double price;
  final VoidCallback press;

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      margin: const EdgeInsets.only(
          left: kDefaultPadding,
          top: kDefaultPadding / 2,
          bottom: kDefaultPadding * 2.5),
      padding: const EdgeInsets.all(kDefaultPadding / 2),
      width: size.width * 0.4,
      child: Column(children: [
        Image.asset(image),
        GestureDetector(
          onTap:press ,
          child: Container(
            decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10)),
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                      offset: Offset(0, 10),
                      blurRadius: 50,
                      color: kPrimaryColor.withOpacity(0.23))
                ]),
            child: Row(
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "$title\n".toUpperCase(),
                        style: TextStyle(color: Colors.green),
                      ),
                      TextSpan(
                          text: country,
                          style: TextStyle(color: kPrimaryColor.withOpacity(0.5)))
                    ],
                  ),
                ),
                Spacer(),
                const Text(
                  "\$price",
                  style: TextStyle(color: Colors.green),
                )
              ],
            ),
          ),
        )
      ]),
    );
  }
}
