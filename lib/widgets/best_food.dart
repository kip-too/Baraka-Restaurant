import 'package:baraka/configs/test_url.dart';
import 'package:baraka/screens/details/food_details.dart';
import 'package:flutter/material.dart';

class BestFoods extends StatefulWidget {
  const BestFoods({super.key});

  @override
  State<BestFoods> createState() => _BestFoodsState();
}

class _BestFoodsState extends State<BestFoods> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 400,
      width: double.infinity,
      child: Column(
        children: const <Widget>[
          BestFoodTitle(),
          Expanded(
            child: BestFoodList(),
          ),
        ],
      ),
    );
  }
}

class BestFoodTitle extends StatelessWidget {
  const BestFoodTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 10, top: 5, bottom: 5),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: const <Widget>[
          Text(
            "Best Foods",
            style: TextStyle(
              fontSize: 20,
              color: Color(0xff3a3a3b),
              fontWeight: FontWeight.w300,
            ),
          )
        ],
      ),
    );
  }
}

class BestFoodTiles extends StatelessWidget {
  final String name;
  final String imageUrl;
  final String rating;
  final String numberofRating;
  final String price;
  final String slug;

  const BestFoodTiles({
    super.key,
    required this.name,
    required this.imageUrl,
    required this.rating,
    required this.numberofRating,
    required this.price,
    required this.slug,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      //TODO:implement on tap
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
              semanticContainer: true,
              clipBehavior: Clip.antiAliasWithSaveLayer,
              shape: BeveledRectangleBorder(
                borderRadius: BorderRadius.circular(10.0),
              ),
              elevation: 1,
              margin: const EdgeInsets.all(5),
              child: const Image(
                image: NetworkImage(riceUrl),
              ),
            ),
          )
        ],
      ),
    );
  }
}

class BestFoodList extends StatelessWidget {
  const BestFoodList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: const <Widget>[
        BestFoodTiles(
            name: "Fried Egg",
            imageUrl: riceUrl,
            rating: '4.9',
            numberofRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        BestFoodTiles(
            name: "Mixed vegetable",
            imageUrl: "assets/images/bestfood/ic_best_food_9.jpeg",
            rating: "4.9",
            numberofRating: "100",
            price: "17.03",
            slug: ""),
        BestFoodTiles(
            name: "Salad with chicken meat",
            imageUrl: "assets/images/bestfood/ic_best_food_10.jpeg",
            rating: "4.0",
            numberofRating: "50",
            price: "11.00",
            slug: ""),
        BestFoodTiles(
            name: "New mixed salad",
            imageUrl: "assets/images/bestfood/ic_best_food_5.jpeg",
            rating: "4.00",
            numberofRating: "100",
            price: "11.10",
            slug: ""),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "assets/images/bestfood/ic_best_food_1.jpeg",
            rating: "4.6",
            numberofRating: "150",
            price: "12.00",
            slug: ""),
        BestFoodTiles(
            name: "New mixed salad",
            imageUrl: "assets/images/bestfood/ic_best_food_2.jpeg",
            rating: "4.00",
            numberofRating: "100",
            price: "11.10",
            slug: ""),
        BestFoodTiles(
            name: "Potato with meat fry",
            imageUrl: "assets/images/bestfood/ic_best_food_3.jpeg",
            rating: "4.2",
            numberofRating: "70",
            price: "23.0",
            slug: ""),
        BestFoodTiles(
            name: "Fried Egg",
            imageUrl: "assets/images/bestfood/ic_best_food_4.jpeg",
            rating: '4.9',
            numberofRating: '200',
            price: '15.06',
            slug: "fried_egg"),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "assets/images/bestfood/ic_best_food_5.jpeg",
            rating: "4.6",
            numberofRating: "150",
            price: "12.00",
            slug: ""),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "assets/images/bestfood/ic_best_food_6.jpeg",
            rating: "4.6",
            numberofRating: "150",
            price: "12.00",
            slug: ""),
        BestFoodTiles(
            name: "Red meat with salad",
            imageUrl: "assets/images/bestfood/ic_best_food_7.jpeg",
            rating: "4.6",
            numberofRating: "150",
            price: "12.00",
            slug: ""),
      ],
    );
  }
}
