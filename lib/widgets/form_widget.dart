import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

class FormDefault extends StatelessWidget {
  const FormDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: 20.0,
        ),
        Text(
          "Full Name",
          style: subText.copyWith(
            fontSize: 14.0,
          ),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: OutlineInputBorder(
              borderSide: BorderSide(
                color: ColorDilTravel.black,
                width: 5.0,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
