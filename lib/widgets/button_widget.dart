import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ButtonDefault extends StatelessWidget {
  ButtonDefault({
    Key? key,
    this.height = 55.0,
    this.radius,
    this.text,
    this.width = 327.0,
  }) : super(key: key);
  String? text;
  double? radius;
  double? height;
  double? width;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          primary: ColorDilTravel.primary,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
        ),
        child: Text(
          text!,
          style: buttonText.copyWith(fontSize: 18.0),
        ),
      ),
    );
  }
}
