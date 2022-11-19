import 'package:diltravel/routes/routes.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:diltravel/widgets/interest_widget.dart';
import 'package:diltravel/widgets/photos_detail.dart';
import 'package:flutter/material.dart';

class DetailPage extends StatefulWidget {
  const DetailPage({Key? key}) : super(key: key);

  @override
  State<DetailPage> createState() => _DetailPageState();
}

class _DetailPageState extends State<DetailPage> {
  Widget background() {
    return Container(
      height: 450.0,
      width: double.infinity,
      decoration: const BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage("assets/img/image_destination1.png"),
        ),
      ),
    );
  }

  Widget shadow() {
    return Container(
      margin: const EdgeInsets.only(top: 236.0),
      width: double.infinity,
      height: 214.0,
      decoration: BoxDecoration(
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              ColorDilTravel.white.withOpacity(0),
              const Color.fromARGB(255, 18, 17, 17).withOpacity(0.95)
            ]),
      ),
    );
  }

  Widget emblemTitle() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      width: double.infinity,
      child: Column(
        children: [
          Container(
            height: 24.0,
            width: 108.0,
            decoration: const BoxDecoration(
                image: DecorationImage(
                    image: AssetImage("assets/img/icon_emblem.png"))),
          ),
        ],
      ),
    );
  }

  Widget cardContent() {
    return Container(
      margin: const EdgeInsets.only(top: 330.0),
      width: double.infinity,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.symmetric(horizontal: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Lake Ciliwung ",
                        style: tittleText.copyWith(
                            color: ColorDilTravel.white, fontSize: 24.0),
                      ),
                      Text(
                        "Tangerang",
                        style: subText.copyWith(
                            color: ColorDilTravel.white, fontSize: 16.0),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(
                      "assets/img/icon_star.png",
                      height: 20.0,
                      width: 20.0,
                    ),
                    Text("4.5",
                        style: tittleText.copyWith(
                            fontSize: 14.0, color: ColorDilTravel.white))
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 20.0,
          ),
          Container(
            height: 420.0,
            width: 347,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10.0),
              color: ColorDilTravel.white,
            ),
            child: Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "About",
                    style: tittleText.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Text(
                    "Berada di jalur jalan provinsi yang menghubungkan DenpasarSingaraja serta letaknya yang dekat dengan Kebun Raya Eka Karya menjadikan tempat Bali.",
                    style: subText.copyWith(fontSize: 14.0),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Photos",
                    style: tittleText.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    children: [
                      DetailPhotos(
                        image: "assets/img/image_photo1.png",
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      DetailPhotos(
                        image: "assets/img/image_photo2.png",
                      ),
                      const SizedBox(
                        width: 16.0,
                      ),
                      DetailPhotos(
                        image: "assets/img/image_photo3.png",
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Text(
                    "Interests",
                    style: tittleText.copyWith(fontSize: 16.0),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  // NOTE: INTERESTS
                  Row(children: [
                    Interest(
                      text: "Kids Park",
                    ),
                    Interest(
                      text: "Honor Bridge",
                    ),
                  ]),
                  const SizedBox(
                    height: 4.0,
                  ),
                  Row(children: [
                    Interest(
                      text: "City Museum",
                    ),
                    Interest(
                      text: "Central Mall",
                    ),
                  ]),
                ],
              ),
            ),
          ),
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(
              left: 50.0,
              right: 50.0,
              bottom: 50.0,
              // top: 20.0,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "IDR 2.500.000",
                      style: tittleText.copyWith(fontSize: 18.0),
                    ),
                    Text(
                      "per orang",
                      style: descText.copyWith(fontSize: 14.0),
                    ),
                  ],
                ),
                ButtonDefault(
                  radius: 10.0,
                  height: 55.0,
                  width: 170.0,
                  text: "Book Now",
                  onpress: () {
                    Navigator.pushNamed(context, DilTravelRoute.seatchoose);
                  },
                )
              ],
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Stack(
          children: [
            // NOTE: BACKGROUND
            background(),

            // NOTE: EMBLEM
            emblemTitle(),

            // NOTE: SHADOW
            shadow(),

            // NOTE: CARD CONTENT
            SingleChildScrollView(
              child: cardContent(),
            ),
          ],
        ),
      ),
    );
  }
}
