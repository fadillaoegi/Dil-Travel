import 'package:diltravel/styles/colors.dart';
import 'package:flutter/material.dart';

class ButtonDefault extends StatelessWidget {
  const ButtonDefault({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      // color: ColorDilTravel.primary,
      decoration: BoxDecoration(borderRadius: BorderRadius.circular(20.0)),
      height: 55.0,
      width: 220.0,
      child: ElevatedButton(
        onPressed: () {},
        child: Text("My Bookings"),
        style: ElevatedButton.styleFrom(
            primary: ColorDilTravel.primary,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20))),
      ),
    );
  }
}
