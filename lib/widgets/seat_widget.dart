import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class SeatItem extends StatelessWidget {
  // String? image;
  SeatItem({
    super.key,
    this.statusSeat = 0,
  });

  // NOTE: 0.AVAILABLE 1.SELECTED 2.UNAVAILABLE
  int statusSeat;
  backgroundSeat() {
    switch (statusSeat) {
      case 0:
        return const Color(0xffE0D9FF);
      case 1:
        return ColorDilTravel.primary;
      case 2:
        return ColorDilTravel.grey;
    }
  }

  border() {
    switch (statusSeat) {
      case 0:
        // NOTE:
        return ColorDilTravel.primary;
      case 1:
        return ColorDilTravel.primary;
      case 2:
        return ColorDilTravel.grey;
    }
  }

  child() {
    switch (statusSeat) {
      case 0:
        // NOTE:
        return const SizedBox();
      case 1:
        return Center(
          child: Text(
            "You",
            style: tittleText.copyWith(
                fontSize: 14.0, color: ColorDilTravel.white),
          ),
        );
      case 2:
        return const SizedBox();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        Container(
          height: 48.0,
          width: 48.0,
          decoration: BoxDecoration(
            color: backgroundSeat(),
            borderRadius: BorderRadius.circular(15.0),
            border: Border.all(color: border()),
          ),
          child: child(),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class SeatItemAlfabet extends StatelessWidget {
  String? text;
  SeatItemAlfabet({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(),
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
