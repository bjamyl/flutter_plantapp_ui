import 'package:flutter/material.dart';
import '../../constants.dart';

class RecommendedTitle extends StatelessWidget {
  const RecommendedTitle({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            decoration: const BoxDecoration(
                border:
                    Border(bottom: BorderSide(width: 2, color: Colors.green))),
            child: const Text(
              'Recommended',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text('More'),
          )
        ],
      ),
    );
  }
}
