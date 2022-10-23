import 'package:diltravel/styles/style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class SuccessCheckout extends StatelessWidget {
  const SuccessCheckout({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "assets/img/image_success.png",
                height: 150.0,
                width: 300.0,
              ),
              const SizedBox(
                height: 80.0,
              ),
              Text(
                "Well Booked 😍",
                style: tittleText.copyWith(fontSize: 32.0),
              ),
              Text(
                "Are you ready to explore the new\nworld of experiences?",
                style: descText.copyWith(fontSize: 16.0),
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: 50.0,
              ),
              const ButtonDefault()
            ],
          ),
        ),
      ),
    );
  }
}
