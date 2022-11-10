import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class Carousel extends StatelessWidget {
  Carousel({
    super.key,
    this.city,
    this.image,
    this.name,
    this.onTap,
  });

  String? image;
  String? name;
  String? city;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
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
                  image: DecorationImage(image: AssetImage(image!))),
              child: Align(
                alignment: Alignment.topRight,
                child: Container(
                  width: 64.5,
                  height: 30.0,
                  padding: const EdgeInsets.all(6.0),
                  decoration: const BoxDecoration(
                      color: ColorDilTravel.white,
                      borderRadius:
                          BorderRadius.only(bottomLeft: Radius.circular(10.0))),
                  child: Row(
                    children: [
                      Image.asset(
                        "assets/img/icon_star.png",
                        height: 24.0,
                        width: 24.0,
                      ),
                      Text("4.5", style: tittleText.copyWith(fontSize: 14.0))
                    ],
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20.0,
            ),
            Text(
              name!,
              style: subText.copyWith(fontSize: 18.0),
            ),
            const SizedBox(
              height: 5.0,
            ),
            Text(
              city!,
              style: descText.copyWith(fontSize: 14.0),
            )
          ],
        ),
      ),
    );
  }
}
