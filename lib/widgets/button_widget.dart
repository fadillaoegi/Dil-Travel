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
    this.onpress,
  }) : super(key: key);
  String? text;
  double? radius;
  double? height;
  double? width;
  VoidCallback? onpress;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: height,
      width: width,
      child: ElevatedButton(
        onPressed: onpress,
        style: ElevatedButton.styleFrom(
          backgroundColor: ColorDilTravel.primary,
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
