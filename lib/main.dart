import 'package:diltravel/cubit/page_cubit.dart';
import 'package:diltravel/pages/bonus_saldo_page.dart';
import 'package:diltravel/pages/checkout_page.dart';
import 'package:diltravel/pages/chose_seat_page.dart';
import 'package:diltravel/pages/detail_page.dart';
import 'package:diltravel/pages/get_start_page.dart';
import 'package:diltravel/pages/home_page.dart';
import 'package:diltravel/pages/main_bloc_page.dart';
import 'package:diltravel/pages/signup_page.dart';
import 'package:diltravel/pages/splash.dart';
import 'package:diltravel/pages/success_checkout_page.dart';
import 'package:diltravel/pages/void_page.dart';
import 'package:diltravel/routes/routes.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({Key? key}) : super(key: key);

  @override
  State<MainApp> createState() => _MainAppState();
}

class _MainAppState extends State<MainApp> {
  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: ((context) => PageCubit())),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        // home: const DetailPage(),
        initialRoute: DilTravelRoute.splash,
        routes: {
          DilTravelRoute.mainpages: (context) => const MainBlocPage(),
          DilTravelRoute.splash: (context) => const Splash(),
          DilTravelRoute.getstart: (context) => const GetStart(),
          DilTravelRoute.home: (context) => const HomePage(),
          DilTravelRoute.success: (context) => const SuccessCheckout(),
          DilTravelRoute.signup: (context) => const SignupPage(),
          DilTravelRoute.bonus: (context) => const BonusPage(),
          DilTravelRoute.voidpages: (context) => const VoidPage(),
          DilTravelRoute.detail: (context) => const DetailPage(),
          DilTravelRoute.seatchoose: (context) => const ChoseSheat(),
          DilTravelRoute.checkout: (context) => const CheckOut(),
          // DilTravelRoute.ujiCoba: (context) => const MainPage(),
        },
      ),
    );
  }
}
