import 'package:baraka/screens/details/food_details.dart';
import 'package:baraka/screens/home/home_page.dart';
import 'package:baraka/screens/profile/profile.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class BottomNavBar extends StatefulWidget {
  @override
  BottomNavBarState createState() => BottomNavBarState();
}

class BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = 0;
    List<Widget> pages = [
      const HomeScreen(),
      const FoodDetailsPage(),
      const UserProfilePage(),
    ];
    void onItemTapped(int index) {
      setState(() {
        pages[selectedIndex] = index as Widget;
//        navigateToScreens(index);
      });
    }

    return BottomNavigationBar(
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          label: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shopping_basket_rounded),
          label: 'Cart',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.user),
          label: 'Profile',
        ),
      ],
      currentIndex: selectedIndex,
      selectedItemColor: const Color(0xFFfd5352),
      onTap: onItemTapped,
    );
  }
}
