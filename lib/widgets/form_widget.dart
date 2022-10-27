import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

// ignore: must_be_immutable
class FormDefault extends StatelessWidget {
  FormDefault({
    Key? key,
    this.text,
  }) : super(key: key);
  String? text;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Text(
          text!,
          style: subText.copyWith(
            fontSize: 14.0,
          ),
        ),
        const SizedBox(
          height: 10.0,
        ),
        TextFormField(
          decoration: InputDecoration(
            border: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: ColorDilTravel.black,
                  width: 5.0,
                ),
                borderRadius: BorderRadius.circular(20.0)),
          ),
        ),
      ],
    );
  }
}
