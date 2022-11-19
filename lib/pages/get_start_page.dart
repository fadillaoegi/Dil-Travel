import 'package:diltravel/routes/routes.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:flutter/material.dart';

class GetStart extends StatelessWidget {
  const GetStart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Stack(children: [
          Container(
            height: double.infinity,
            width: double.infinity,
            decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/img/image_get_started.png"),
                  fit: BoxFit.cover),
            ),
          ),
          Center(
            child: Container(
              margin: const EdgeInsets.only(bottom: 60.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Text(
                    "Fly Like a Bird",
                    style: cardText500.copyWith(fontSize: 32.0),
                  ),
                  Text(
                    "Explore new world with us and let\nyourself get an amazing experiences",
                    textAlign: TextAlign.center,
                    style: cardText.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 50.0,
                  ),
                  ButtonDefault(
                    text: "Get Started",
                    width: 220.0,
                    height: 55.0,
                    onpress: (() {
                      Navigator.pushNamed(context, DilTravelRoute.mainpages);
                    }),
                  )
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
