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

// WIDGET NAME USER
  Widget nameUser() {
    return SizedBox(
      width: 250.0,
      child: Text(
        "Hello,\nShofa Nabila Alifa",
        overflow: TextOverflow.ellipsis,
        style:
            tittleText.copyWith(fontSize: 24.0, color: ColorDilTravel.primary),
      ),
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
                  nameUser(),
                  photoProfile(),
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
                  children: [
                    Carousel(
                      image: "assets/img/image_destination1.png",
                      city: "Kendari",
                      name: "KendariHotel",
                      onTap: () {
                        print("Sudah");
                      },
                    ),
                    Carousel(
                        image: "assets/img/image_destination2.png",
                        city: "Tegal",
                        name: "TegalHotel"),
                    Carousel(
                        image: "assets/img/image_destination3.png",
                        city: "Semarang",
                        name: "CleoHotel"),
                    Carousel(
                        image: "assets/img/image_destination4.png",
                        city: "Surabaya",
                        name: "SurabayaHotel"),
                  ],
                ),
              ),
              const SizedBox(
                height: 30.0,
              ),
              Text("New This Year",
                  style: tittleText.copyWith(
                    fontSize: 18.0,
                  )),
              const SizedBox(
                height: 16.0,
              ),
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
