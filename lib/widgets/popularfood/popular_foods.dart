import 'package:baraka/configs/test_url.dart';
import 'package:flutter/material.dart';

import '../../screens/details/food_details.dart';

class PopularFoods extends StatefulWidget {
  static const String id = 'food_order_page';
  const PopularFoods({super.key});

  @override
  State<PopularFoods> createState() => _PopularFoodsState();
}

class _PopularFoodsState extends State<PopularFoods> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 265,
      width: double.infinity,
      child: Column(
        children: const [
          PopularFoodTile(),
          Expanded(
            child: PopularFoodItems(),
          ),
        ],
      ),
    );
  }
}

class PopularFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String numberOfRating;
  final String price;
  final String slug;

  const PopularFoodTiles({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.numberOfRating,
    required this.price,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //TODO: implement on tap
      onTap: () {
        Navigator.pushNamed(context, FoodDetailsPage.id);
      },
      child: Column(
        children: <Widget>[
          Container(
            padding:
                const EdgeInsets.only(left: 10, right: 5, top: 5, bottom: 5),
            decoration: const BoxDecoration(boxShadow: []),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: SizedBox(
                width: 170,
                height: 210,
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        Align(
                          alignment: Alignment.topRight,
                          widthFactor: double.infinity,
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xfffae3e2),
                                  blurRadius: 25.0,
                                  offset: Offset(0.0, 0.75),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.favorite,
                              color: Color(0xfffb3132),
                              size: 16,
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Center(
                            child: Image(
                              width: 130,
                              height: 140,
                              image: NetworkImage(imageUrl),
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding: const EdgeInsets.only(left: 5, top: 5),
                          child: Text(
                            name,
                            style: const TextStyle(
                              color: Color(0xff6e6e71),
                              fontSize: 15,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        Container(
                          alignment: Alignment.topRight,
                          padding: const EdgeInsets.only(right: 5),
                          child: Container(
                            height: 28,
                            width: 28,
                            decoration: const BoxDecoration(
                              shape: BoxShape.circle,
                              color: Colors.white70,
                              boxShadow: [
                                BoxShadow(
                                  color: Color(0xfffae3e2),
                                  blurRadius: 25.0,
                                  offset: Offset(0.0, 0.75),
                                ),
                              ],
                            ),
                            child: const Icon(
                              Icons.near_me,
                              color: Color(0xfffb3132),
                              size: 16,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: <Widget>[
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Text(
                                rating,
                                style: const TextStyle(
                                  color: Color(0xff6e6e71),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                            Container(
                              padding: const EdgeInsets.only(top: 3, left: 5),
                              child: Row(
                                children: const <Widget>[
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Color(0xfffb3132),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Color(0xfffb3132),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Color(0xfffb3132),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Color(0xfffb3132),
                                  ),
                                  Icon(
                                    Icons.star,
                                    size: 10,
                                    color: Color(0xfffb3132),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              alignment: Alignment.topLeft,
                              padding: const EdgeInsets.only(left: 5, top: 5),
                              child: Text(
                                "($numberOfRating)",
                                style: const TextStyle(
                                  color: Color(0xff6e6e71),
                                  fontSize: 10,
                                  fontWeight: FontWeight.w400,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Container(
                          alignment: Alignment.bottomLeft,
                          padding:
                              const EdgeInsets.only(left: 5, top: 5, right: 5),
                          child: Text(
                            '\$$price',
                            style: const TextStyle(
                                color: Color(0xff6e6e71),
                                fontSize: 12,
                                fontWeight: FontWeight.w600),
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class PopularFoodTile extends StatelessWidget {
  const PopularFoodTile({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, right: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            "Popular Foods",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff3a3a3b),
              fontWeight: FontWeight.w300,
            ),
          ),
          Text(
            "See all",
            style: TextStyle(
              fontSize: 16,
              color: Colors.blue,
              fontWeight: FontWeight.w100,
            ),
          )
        ],
      ),
    );
  }
}

class PopularFoodItems extends StatelessWidget {
  const PopularFoodItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      scrollDirection: Axis.horizontal,
      children: const <Widget>[
        PopularFoodTiles(
            name: "Fried Egg",
            imageUrl: riceUrl,
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularFoodTiles(
            name: "Mixed Vegetable",
            imageUrl: riceUrl,
            rating: "4.9",
            numberOfRating: "100",
            price: "17.03",
            slug: ""),
        PopularFoodTiles(
            name: "Salad With Chicken",
            imageUrl: riceUrl,
            rating: "4.0",
            numberOfRating: "50",
            price: "11.00",
            slug: ""),
        PopularFoodTiles(
            name: "Mixed Salad",
            imageUrl: riceUrl,
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularFoodTiles(
            name: "Red meat,Salad",
            imageUrl: riceUrl,
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
        PopularFoodTiles(
            name: "Mixed Salad",
            imageUrl: riceUrl,
            rating: "4.00",
            numberOfRating: "100",
            price: "11.10",
            slug: ""),
        PopularFoodTiles(
            name: "Potato,Meat fry",
            imageUrl: riceUrl,
            rating: "4.2",
            numberOfRating: "70",
            price: "23.0",
            slug: ""),
        PopularFoodTiles(
            name: "Fried Egg",
            imageUrl: riceUrl,
            rating: '4.9',
            numberOfRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        PopularFoodTiles(
            name: "Red meat,Salad",
            imageUrl: riceUrl,
            rating: "4.6",
            numberOfRating: "150",
            price: "12.00",
            slug: ""),
      ],
    );
  }
}
