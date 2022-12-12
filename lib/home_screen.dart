import 'package:flutter/material.dart';
import 'package:grocery_app_sample/screens/Cart/cart.dart';
import 'package:grocery_app_sample/screens/Categories/categories.dart';
import 'package:grocery_app_sample/screens/Home/home_page.dart';
import 'package:grocery_app_sample/screens/Profile/profile.dart';
import 'package:grocery_app_sample/screens/Search/search.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

List screens = [HomeView(), Category(), CartScreen(), Search(), Profile()];

class _HomePageState extends State<HomePage> {
  int currentindex = 0;

  onchanged(value) {
    setState(() {
      currentindex = value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 108, 1, 127),
      body: screens[currentindex],
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 24,
        selectedFontSize: 11,
          currentIndex: currentindex,
          onTap: onchanged,
          backgroundColor: Colors.transparent,
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Colors.white,
          unselectedItemColor: Colors.grey,
          showUnselectedLabels: false,
          items: const <BottomNavigationBarItem>[
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(
                icon: Icon(Icons.apps_outlined), label: 'Categories'),
            BottomNavigationBarItem(
                icon: Icon(Icons.shopping_cart), label: 'Cart', ),
                BottomNavigationBarItem(
                icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: Icon(Icons.person_outline_outlined), label: 'Profile'),
          ]),
    );
  }
}