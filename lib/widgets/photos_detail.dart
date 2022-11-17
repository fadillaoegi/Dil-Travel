import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DetailPhotos extends StatelessWidget {
  String? image;
  DetailPhotos({super.key, this.image});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 70.0,
      width: 70.0,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        image:  DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(image!)),
      ),
    );
  }
}
