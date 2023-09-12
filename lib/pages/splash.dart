import 'dart:async';
import 'package:diltravel/pages/get_start_page.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:flutter/material.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {
  @override
  void initState() {
    super.initState();
    SplashStart();
  }

  // ignore: non_constant_identifier_names
  SplashStart() async {
    var durasiSplash = const Duration(seconds: 4);

    return Timer(durasiSplash, () {
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (context) {
        return const GetStart();
      }));
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: ColorDilTravel.primary,
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Center(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  "assets/img/icon_plane.png",
                  width: 249.0,
                  height: 100.0,
                ),
                Image.asset(
                  "assets/img/fontLogo.png",
                  width: 249.0,
                  height: 100.0,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
