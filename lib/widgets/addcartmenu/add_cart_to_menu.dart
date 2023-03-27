import 'package:baraka/configs/animation/scale_route.dart';
import 'package:baraka/screens/order/food_order_page.dart';
import 'package:flutter/material.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child:
          Row(mainAxisAlignment: MainAxisAlignment.center, children: <Widget>[
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.remove),
          color: Colors.black,
          iconSize: 30,
        ),
        InkWell(
          onTap: () {
            Navigator.push(context, ScaleRoute(page: const FoodOrderPage()));
          },
          child: Container(
            width: 200.0,
            height: 45.0,
            decoration: BoxDecoration(
              color: const Color(0xfffd2c2c),
              border: Border.all(
                color: Colors.white,
                width: 2.0,
              ),
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: const Center(
              child: Text(
                "Add To Bag",
                style: TextStyle(
                  fontSize: 18.0,
                  color: Colors.white,
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(
            Icons.add,
          ),
          color: const Color(0xfffd2c2c),
          iconSize: 30,
        )
      ]),
    );
  }
}
