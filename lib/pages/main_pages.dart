import 'package:diltravel/pages/home_page.dart';
import 'package:diltravel/pages/void_page.dart';
import 'package:diltravel/styles/colors.dart';
import 'package:flutter/material.dart';

class MainPages extends StatefulWidget {
  const MainPages({super.key});

  @override
  State<MainPages> createState() => _MainPagesState();
}

class _MainPagesState extends State<MainPages> {
  int currentIndex = 0;
  void onTap(int index) {
    setState(() {
      currentIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    // PAGES
    final List<Widget> pages = [
      const HomePage(),
      const VoidPage(),
      const VoidPage(),
      const VoidPage(),
    ];
// BOTTOM NAVIGATION BAR
    final List<BottomNavigationBarItem> botItem = [
      const BottomNavigationBarItem(
        icon: Icon(
          Icons.home,
          size: 24.0,
        ),
        label: "Home",
      ),
      const BottomNavigationBarItem(
        label: "Book",
        icon: Icon(
          Icons.book,
          size: 24.0,
        ),
      ),
      const BottomNavigationBarItem(
        label: "Card",
        icon: Icon(
          Icons.credit_card,
          size: 24.0,
        ),
      ),
      const BottomNavigationBarItem(
        label: "Setting",
        icon: Icon(
          Icons.settings,
          size: 24.0,
        ),
      ),
    ];
    final botNav = BottomNavigationBar(
      items: botItem,
      type: BottomNavigationBarType.fixed,
      onTap: onTap,
      backgroundColor: ColorDilTravel.white,
      currentIndex: currentIndex,
      selectedItemColor: ColorDilTravel.primary,
      unselectedItemColor: ColorDilTravel.grey,
    );

    return Scaffold(
      body: Center(child: pages[currentIndex]),
      bottomNavigationBar: Container(
          width: 200,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              color: ColorDilTravel.white),
          child: botNav),
    );
  }
}
