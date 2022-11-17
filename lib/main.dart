import 'package:diltravel/pages/bonus_saldo_page.dart';
import 'package:diltravel/pages/detail_page.dart';
import 'package:diltravel/pages/get_start_page.dart';
import 'package:diltravel/pages/home_page.dart';
import 'package:diltravel/pages/main_pages.dart';
import 'package:diltravel/pages/signup_page.dart';
import 'package:diltravel/pages/splash.dart';
import 'package:diltravel/pages/success_checkout_page.dart';
import 'package:diltravel/pages/void_page.dart';
import 'package:diltravel/routes/routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MainApp());

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      // home: const DetailPage(),
      initialRoute: DilTravelRoute.mainpages,
      routes: {
        DilTravelRoute.mainpages: (context) => const MainPages(),
        DilTravelRoute.splash: (context) => const Splash(),
        DilTravelRoute.getstart: (context) => const GetStart(),
        DilTravelRoute.home: (context) => const HomePage(),
        DilTravelRoute.success: (context) => const SuccessCheckout(),
        DilTravelRoute.signup: (context) => const SignupPage(),
        DilTravelRoute.bonus: (context) => const BonusPage(),
        DilTravelRoute.voidpages: (context) => const VoidPage(),
        DilTravelRoute.detail: (context) => const DetailPage(),
      },
    );
  }
}
