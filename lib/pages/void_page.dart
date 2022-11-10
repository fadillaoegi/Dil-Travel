import 'package:diltravel/styles/colors.dart';
import 'package:flutter/material.dart';

class VoidPage extends StatelessWidget {
  const VoidPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorDilTravel.black,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: const [
              Text(
                "Void Page",
                style: TextStyle(
                  color: ColorDilTravel.white,
                  fontSize: 30.0,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
