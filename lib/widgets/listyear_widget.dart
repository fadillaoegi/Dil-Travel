import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListNewYear extends StatelessWidget {
  ListNewYear({
    super.key,
    this.city,
    this.image,
    this.name,
    this.rating,
    this.onTap,
  });
  String? image;
  String? name;
  String? city;
  String? rating;
  VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 90.0,
        width: 327.0,
        padding: const EdgeInsets.all(10.0),
        margin: const EdgeInsets.only(bottom: 18.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: ColorDilTravel.white,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Container(
              height: 70.0,
              width: 70.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10.0),
                image: DecorationImage(
                    fit: BoxFit.cover, image: AssetImage(image!)),
              ),
            ),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  name!,
                  style: tittleText.copyWith(fontSize: 18.0),
                ),
                const SizedBox(
                  height: 5.0,
                ),
                Text(
                  city!,
                  style: descText.copyWith(fontSize: 14.0),
                ),
              ],
            ),
            SizedBox(
              width: 50.0,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Image.asset(
                    "assets/img/icon_star.png",
                    height: 20.0,
                    width: 20.0,
                  ),
                  Text(rating!, style: tittleText.copyWith(fontSize: 14.0))
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
