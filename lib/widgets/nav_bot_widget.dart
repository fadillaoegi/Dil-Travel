import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

class BotNavCustome extends StatelessWidget {
  const BotNavCustome({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60.0,
          margin: const EdgeInsets.only(
              top: 30.0, left: 24.0, right: 24.0, bottom: 30.0),
          decoration: BoxDecoration(
              color: ColorDilTravel.white,
              borderRadius: BorderRadius.circular(18.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Icon(
                    Icons.home,
                    color: ColorDilTravel.primary,
                  ),
                  Text(
                    "Home",
                    style: subText.copyWith(fontSize: 10.0),
                  ),
                  Container(
                    height: 2.0,
                    width: 30.0,
                    decoration: BoxDecoration(
                        color: ColorDilTravel.primary,
                        borderRadius: BorderRadius.circular(18.0)),
                  )
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Icon(
                    Icons.book,
                    color: ColorDilTravel.grey,
                  ),
                  Text(
                    "Book",
                    style: subText.copyWith(fontSize: 10.0),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Icon(
                    Icons.credit_card_outlined,
                    color: ColorDilTravel.grey,
                  ),
                  Text(
                    "Credit Card",
                    style: subText.copyWith(fontSize: 10.0),
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(),
                  const Icon(
                    Icons.settings,
                    color: ColorDilTravel.grey,
                  ),
                  Text(
                    "Setting",
                    style: subText.copyWith(fontSize: 10.0),
                  ),
                ],
              ),
            ],
          ),
        ),
      );
  }
}