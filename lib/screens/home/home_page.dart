import 'package:flutter/material.dart';
import '../../widgets/popularfood/popular_foods.dart';
import '../../widgets/widgets.dart';

class HomeScreen extends StatefulWidget {
  static const String id = 'home_page';
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        title: const Text(
          "What would you like to eat?",
          style: TextStyle(
            color: Color(0xff3a3737),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
        ),
        actions: <Widget>[
          IconButton(
            icon: const Icon(
              Icons.notifications_none,
              color: Color(0xff3a3737),
            ),
            onPressed: () {},
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: const <Widget>[
            SearchWidget(),
            TopMenus(),
            PopularFoods(),
            BestFoods(),
          ],
        ),
      ),
      bottomNavigationBar: BottomNavBar(),
    );
  }
}
