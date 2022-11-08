import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

class Casrousel extends StatelessWidget {
  const Casrousel({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 200.0,
      height: 323.0,
      padding: const EdgeInsets.all(10.0),
      decoration: BoxDecoration(
        color: ColorDilTravel.white,
        borderRadius: BorderRadius.circular(18.0),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 220.0,
            width: 180.0,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(18.0),
                image: const DecorationImage(
                    image: AssetImage("assets/img/image_destination1.png"))),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Text(
            "Lake Ciliwung",
            style: subText.copyWith(fontSize: 18.0),
          ),
          const SizedBox(
            height: 5.0,
          ),
          Text(
            "Tanggerang",
            style: descText.copyWith(fontSize: 14.0),
          )
        ],
      ),
    );
  }
}
