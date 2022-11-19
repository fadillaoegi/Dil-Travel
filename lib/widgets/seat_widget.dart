import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeatItem extends StatelessWidget {
  String? image;
  SeatItem({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 48.0,
          width: 48.0,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8.0),
            image: DecorationImage(
              image: AssetImage(image!),
            ),
          ),
        ),
      ],
    );
  }
}

class SeatItemAlfabet extends StatelessWidget {
  String? text;
  SeatItemAlfabet({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 48.0,
      width: 48.0,
      child: Center(
        child: Text(
          text!,
          style: descText.copyWith(
            fontSize: 16.0,
          ),
        ),
      ),
    );
  }
}
