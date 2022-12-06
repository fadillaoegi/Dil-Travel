import 'package:diltravel/cubit/page_cubit.dart';
import 'package:diltravel/pages/home_page.dart';
import 'package:diltravel/pages/void_page.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:diltravel/styles/text_style.dart';
import 'package:diltravel/widgets/nav_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainBlocPage extends StatefulWidget {
  const MainBlocPage({super.key});

  @override
  State<MainBlocPage> createState() => _MainBlocPageState();
}

class _MainBlocPageState extends State<MainBlocPage> {
  @override
  Widget build(BuildContext context) {
    Widget content(int currentIndex) {
      switch (currentIndex) {
        case 0:
          return const HomePage();
        case 1:
          return const VoidPage();
        case 2:
          return const VoidPage();
        case 3:
          return const VoidPage();
        default:
          return const HomePage();
      }
    }

    Widget botNav() {
      return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
          width: double.infinity,
          height: 60.0,
          margin: const EdgeInsets.only(
              top: 30.0, left: 24.0, right: 24.0, bottom: 30.0),
          decoration: BoxDecoration(
              color: ColorDilTravel.white,
              borderRadius: BorderRadius.circular(18.0)),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              NavItemBot(
                icon: "assets/img/globe.png",
                index: 0,
                text: "home",
              ),
              NavItemBot(
                icon: "assets/img/book.png",
                index: 1,
                text: "book",
              ),
              NavItemBot(
                icon: "assets/img/creditcard.png",
                index: 2,
                text: "Credit Card",
              ),
              NavItemBot(
                icon: "assets/img/setting.png",
                index: 3,
                text: "Setting",
              ),
            ],
          ),
        ),
      );
    }

    return BlocBuilder<PageCubit, int>(
      builder: (context, currentIndex) {
        print("object");
        return Scaffold(
          body: Stack(children: [
            content(currentIndex),
            botNav(),
          ]),
        );
      },
    );
  }
}
