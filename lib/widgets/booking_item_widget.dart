import 'package:diltravel/styles/text_style.dart';
import 'package:flutter/material.dart';

class BookingItem extends StatelessWidget {
  String? text;
  BookingItem({super.key, this.text});

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Row(
        children: [
          Container(
            height: 16.0,
            width: 16.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage("assets/img/icon_check.png"))),
          ),
          const SizedBox(
            width: 4.0,
          ),
          Text(text!,
              style: subText.copyWith(
                fontSize: 14.0,
              ))
        ],
      ),
    );
  }
}
