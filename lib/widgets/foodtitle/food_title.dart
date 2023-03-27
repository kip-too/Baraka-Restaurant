import 'package:flutter/material.dart';

class FoodTitleWidget extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productHost;

  const FoodTitleWidget({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productHost,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              productName,
              style: const TextStyle(
                fontSize: 20,
                color: Color(0xff3a3a3b),
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Row(
          children: <Widget>[
            const Text(
              "by",
              style: TextStyle(
                fontSize: 16,
                color: Color(0xffa9a9a9),
                fontWeight: FontWeight.w400,
              ),
            ),
            Text(
              productHost,
              style: const TextStyle(
                fontSize: 16,
                color: Color(0xff1f1f1f),
                fontWeight: FontWeight.w400,
              ),
            )
          ],
        )
      ],
    );
  }
}
