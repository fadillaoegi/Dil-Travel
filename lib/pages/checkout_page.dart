import 'package:diltravel/routes/routes.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/booking_item_widget.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:diltravel/widgets/interest_widget.dart';
import 'package:diltravel/widgets/listyear_widget.dart';
import 'package:flutter/material.dart';

class CheckOut extends StatelessWidget {
  const CheckOut({super.key});

  @override
  Widget build(BuildContext context) {
    // NOTE: SECTION 1
    Widget sectionOne() {
      return Container(
        margin: const EdgeInsets.only(top: 20.0),
        padding: const EdgeInsets.symmetric(
          horizontal: 24.0,
        ),
        child: Column(
          children: [
            // NOTE: RUTE
            Container(
              width: double.infinity,
              height: 65.0,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("assets/img/image_checkout.png"),
                ),
              ),
            ),
            // NOTE: TEXT RUTE
            Container(
              margin: const EdgeInsets.only(top: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "CGK",
                    style: tittleText.copyWith(
                        fontSize: 22.0, color: ColorDilTravel.black),
                  ),
                  Text(
                    "TLC",
                    style: tittleText.copyWith(
                        fontSize: 22.0, color: ColorDilTravel.black),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 4.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Surabaya",
                    style: descText.copyWith(
                        fontSize: 14.0, color: ColorDilTravel.black),
                  ),
                  Text(
                    "Tegal",
                    style: descText.copyWith(
                        fontSize: 14.0, color: ColorDilTravel.black),
                  ),
                ],
              ),
            ),
          ],
        ),
      );
    }

    // NOTE: SECTION 2
    Widget sectionTwo() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(18.0),
          color: ColorDilTravel.white,
        ),
        child: Column(
          children: [
            ListNewYear(
              // onTap: () {
              //   print("Clicked");
              // },
              image: "assets/img/image_photo3.png",
              name: "Candi Borobudur",
              city: "Yogyajarta",
              rating: "4.0",
            ),
            const SizedBox(
              height: 20.0,
            ),
            // NOTE: Check Facilities
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "Traveler"),
                  Text(
                    "2 person",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "Seat"),
                  Text(
                    "A3, B3",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "Insurance"),
                  Text(
                    "YES",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "Refundable"),
                  Text(
                    "NO",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "VAT"),
                  Text(
                    "45%",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "Price"),
                  Text(
                    "IDR 8.500.690",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.only(bottom: 16.0),
              child: Row(
                children: [
                  BookingItem(text: "Grand Total"),
                  Text(
                    "IDR 12.000.000",
                    style: tittleText.copyWith(fontSize: 14.0),
                  )
                ],
              ),
            ),
          ],
        ),
      );
    }

    // NOTE: SECTION 3
    Widget sectionThree() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 30.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(18.0)),
        child: Column(
          children: [
            Text(
              "Payment Details",
              style: tittleText.copyWith(fontSize: 16.0),
            ),
            const SizedBox(
              height: 16.0,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                // NOTE: CARD
                Container(
                  height: 70.0,
                  width: 100,
                  decoration: const BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage("assets/img/cardbg.png"),
                    ),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset(
                        "assets/img/icon_plane.png",
                        height: 25.0,
                        width: 25.0,
                      ),
                      Text(
                        "Play",
                        style: subText.copyWith(
                            fontSize: 16.0, color: ColorDilTravel.white),
                      )
                    ],
                  ),
                ),

                // NOTE: PRICE
                Column(
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    Text(
                      "IDR 80.400.000",
                      style: subText.copyWith(fontSize: 18.0),
                    ),
                    Text(
                      "Current Balance",
                      style: descText.copyWith(fontSize: 14.0),
                    )
                  ],
                )
              ],
            )
          ],
        ),
      );
    }

    // NOTE: SECTION 4
    Widget sectionFour() {
      return Container(
        margin: const EdgeInsets.only(top: 30.0),
        child: ButtonDefault(
          height: 55.0,
          width: 327.0,
          onpress: () {
            Navigator.pushNamed(context, DilTravelRoute.success);
          },
          radius: 17.0,
          text: "Pay Now",
        ),
      );
    }

    // NOTE: SECTION 5
    Widget sectionFive() {
      return Container(
          margin: const EdgeInsets.only(top: 30.0),
          child: TextButton(
              onPressed: () {
                // Navigator.pushNamed(context, DilTravelRoute.success);
              },
              child: Text(
                "Terms and Conditions",
                style: descText.copyWith(fontSize: 16.0),
              )));
    }

    // NOTE: Titr
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        padding: const EdgeInsets.all(24.0),
        child: ListView(
          children: [
            sectionOne(),
            sectionTwo(),
            sectionThree(),
            sectionFour(),
            sectionFive(),
          ],
        ),
      ),
    );
  }
}
