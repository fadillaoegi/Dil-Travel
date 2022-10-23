import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class BonusPage extends StatelessWidget {
  const BonusPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              // color: const Color(0xff341f97),
              height: 211.0,
              width: 340,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  color: const Color(0xff341f97)),
              child: Padding(
                padding: const EdgeInsets.all(28.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Name",
                              style: cardText.copyWith(fontSize: 14.0),
                            ),
                            Text(
                              "S Nabila Alifa",
                              style: cardText500.copyWith(fontSize: 20.0),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              "assets/img/icon_plane.png",
                              height: 24.0,
                              width: 24.0,
                            ),
                            const SizedBox(
                              width: 10.0,
                            ),
                            Text(
                              "Pay",
                              style: cardText500.copyWith(fontSize: 16.0),
                            )
                          ],
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30.0,
                    ),
                    Text(
                      "Balance",
                      style: cardText.copyWith(fontSize: 14.0),
                    ),
                    Text(
                      "IDR 280.000.000",
                      style: cardText500.copyWith(fontSize: 20.0),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 80.0,
            ),
            Text(
              "Big Bonus 🎉",
              style: tittleText.copyWith(fontSize: 32.0),
            ),
            Text(
              "We give you early credit so that\nyou can buy a flight ticket",
              style: descText.copyWith(fontSize: 16.0),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 50.0,
            ),
            ButtonDefault(
              text: "Start Fly Now",
              width: 220.0,
            )
          ],
        ),
      ),
    );
  }
}
