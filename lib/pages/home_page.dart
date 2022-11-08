import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/carousel_widget.dart';
import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  // WIDGET PHOTO PROFILE
  Widget photoProfile() {
    return Container(
      width: 70.0,
      height: 70.0,
      decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
              image: AssetImage("assets/img/image_profile.png"),
              fit: BoxFit.cover)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          padding: const EdgeInsets.symmetric(horizontal: 24.0, vertical: 30.0),
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          child: ListView(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 250.0,
                    child: Text(
                      "Howdy,\nKezia Anne",
                      overflow: TextOverflow.ellipsis,
                      style: tittleText.copyWith(
                          fontSize: 24.0, color: ColorDilTravel.primary),
                    ),
                  ),
                  photoProfile(),
                  // Container(
                  //   child: Text(
                  //     "AAWWW",
                  //   ),
                  // ),
                ],
              ),
              const SizedBox(
                height: 8.0,
              ),
              Text("Where to fly today?",
                  style: descText.copyWith(
                    fontSize: 16.0,
                  )),
              const SizedBox(
                height: 30.0,
              ),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: const [
                    Casrousel(),
                    Casrousel(),
                    Casrousel(),
                    Casrousel(),
                  ],
                ),
              )
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomAppBar(
          color: ColorDilTravel.black,
          child: Row(
            children: const [Text("data")],
          )),
    );
  }
}
