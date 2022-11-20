import 'package:diltravel/routes/routes.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/button_widget.dart';
import 'package:diltravel/widgets/seat_widget.dart';
import 'package:flutter/material.dart';

class ChoseSheat extends StatefulWidget {
  const ChoseSheat({super.key});

  @override
  State<ChoseSheat> createState() => _ChoseSheatState();
}

class _ChoseSheatState extends State<ChoseSheat> {
  // NOTE: SECTION 1
  Widget tittle() {
    return Text(
      "Select Your\nFavorite Seat",
      style: tittleText.copyWith(fontSize: 24.0),
    );
  }

  // NOTE: SECTION 2
  Widget infoSeat() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: Row(
        children: [
          // NOTE: Available
          Container(
            height: 16.0,
            width: 16.0,
            margin: const EdgeInsets.only(right: 6.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              image: const DecorationImage(
                image: AssetImage('assets/img/icon_available.png'),
              ),
            ),
          ),
          Text(
            "Available",
            style: subText.copyWith(fontSize: 14.0),
          ),
          // NOTE: SELECTED
          Container(
            height: 16.0,
            width: 16.0,
            margin: const EdgeInsets.only(right: 6.0, left: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              image: const DecorationImage(
                image: AssetImage('assets/img/icon_selected.png'),
              ),
            ),
          ),
          Text(
            "Selected",
            style: subText.copyWith(fontSize: 14.0),
          ),
          // NOTE: UNAVAILABLE
          Container(
            height: 16.0,
            width: 16.0,
            margin: const EdgeInsets.only(right: 6.0, left: 8.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(6.0),
              image: const DecorationImage(
                image: AssetImage('assets/img/icon_unavailable.png'),
              ),
            ),
          ),
          Text(
            "Unavailable",
            style: subText.copyWith(fontSize: 14.0),
          ),
        ],
      ),
    );
  }

  // NOTE: SECTION 3
  Widget selectSeat() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 30.0, horizontal: 22.0),
      margin: const EdgeInsets.only(top: 30.0),
      width: double.infinity,
      decoration: BoxDecoration(
        color: ColorDilTravel.white,
        borderRadius: BorderRadius.circular(16.0),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          // NOTE: ALFABET TypeSeat
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              SeatItemAlfabet(
                text: "A",
              ),
              SeatItemAlfabet(
                text: "B",
              ),
              Container(
                height: 48.0,
                width: 48.0,
                child: Center(
                  child: Text(
                    "",
                    style: descText.copyWith(
                      fontSize: 16.0,
                    ),
                  ),
                ),
              ),
              SeatItemAlfabet(
                text: "C",
              ),
              SeatItemAlfabet(
                text: "D",
              ),
            ],
          ),

          // NOTE: Seat Section 1
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  statusSeat: 1,
                ),
                SeatItem(
                  statusSeat: 1,
                ),
                SeatItemAlfabet(
                  text: "1",
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItem(
                  statusSeat: 0,
                ),
              ],
            ),
          ),
          // NOTE: Seat Section 2
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItemAlfabet(
                  text: "2",
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItem(
                  statusSeat: 2,
                ),
              ],
            ),
          ),
          // NOTE: Seat Section 3
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  statusSeat: 1,
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItemAlfabet(
                  text: "3",
                ),
                SeatItem(
                  statusSeat: 0,
                ),
                SeatItem(
                  statusSeat: 0,
                ),
              ],
            ),
          ),
          // NOTE: Seat Section 4
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItemAlfabet(
                  text: "4",
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItem(
                  statusSeat: 2,
                ),
              ],
            ),
          ),
          // NOTE: Seat Section 5
          Container(
            padding: const EdgeInsets.only(top: 16.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItem(
                  statusSeat: 2,
                ),
                SeatItemAlfabet(
                  text: "5",
                ),
                SeatItem(
                  statusSeat: 0,
                ),
                SeatItem(
                  statusSeat: 0,
                ),
              ],
            ),
          ),

          // NOTE: Seat Terpilih
          Container(
            margin: const EdgeInsets.only(top: 20.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Your Seat",
                  style: descText.copyWith(fontSize: 16.0),
                ),
                Text(
                  "A3, A4",
                  style: tittleText.copyWith(
                      fontSize: 16.0, color: ColorDilTravel.primary),
                ),
              ],
            ),
          ),
          // NOTE: Total Harga
          Container(
            margin: const EdgeInsets.only(top: 10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Total",
                  style: descText.copyWith(fontSize: 16.0),
                ),
                Text(
                  "IDR 540.000.000",
                  style: tittleText.copyWith(
                      fontSize: 16.0, color: ColorDilTravel.primary),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // NOTE: SECTION 4
  Widget button() {
    return Container(
      margin: const EdgeInsets.only(top: 30.0),
      child: ButtonDefault(
        text: "Continue to Checkout",
        radius: 17.0,
        height: 55,
        width: double.infinity,
        onpress: (() {
          Navigator.pushNamed(context, DilTravelRoute.checkout);
        }),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            tittle(),
            infoSeat(),
            selectSeat(),
            button(),
          ],
        ),
      ),
    );
  }
}
