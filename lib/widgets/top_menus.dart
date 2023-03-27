import 'package:baraka/configs/test_url.dart';
import 'package:flutter/material.dart';

import '../screens/details/food_details.dart';

class TopMenus extends StatefulWidget {
  const TopMenus({super.key});

  @override
  State<TopMenus> createState() => _TopMenusState();
}

class _TopMenusState extends State<TopMenus> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 100,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: const <Widget>[
          TopMenuTiles(name: 'sushi1', imageUrl: riceUrl, slug: ""),
          TopMenuTiles(name: 'sushi1', imageUrl: riceUrl, slug: ""),
          TopMenuTiles(name: 'sushi1', imageUrl: riceUrl, slug: ""),
          TopMenuTiles(name: 'sushi1', imageUrl: riceUrl, slug: ""),
          TopMenuTiles(name: 'sushi1', imageUrl: riceUrl, slug: ""),
        ],
      ),
    );
  }
}

class TopMenuTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String slug;

  const TopMenuTiles(
      {super.key,
      required this.name,
      required this.imageUrl,
      required this.slug});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.pushNamed(context, FoodDetailsPage.id);
      },
      child: Column(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                color: Color(0xfffae3e2),
                blurRadius: 25.0,
                offset: Offset(0.0, 0.75),
              ),
            ]),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(3.0),
                ),
              ),
              child: SizedBox(
                width: 50,
                height: 50,
                child: Center(
                  child: Image(
                    image: NetworkImage(imageUrl),
                    width: 40,
                    height: 50,
                  ),
                ),
              ),
            ),
          ),
          Text(
            name,
            style: const TextStyle(
              color: Color(0xff6e6e71),
              fontSize: 14,
              fontWeight: FontWeight.w400,
            ),
          )
        ],
      ),
    );
  }
}
