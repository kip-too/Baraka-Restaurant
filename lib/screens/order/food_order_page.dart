import 'package:baraka/configs/test_url.dart';
import 'package:baraka/widgets/payment/total_calculation.dart';
import 'package:flutter/material.dart';

import '../../widgets/items/cart_icon_withbadge.dart';
import '../../widgets/items/cart_item.dart';
import '../../widgets/payment/payment_widget.dart';
import '../../widgets/promo/promo_code.dart';

class FoodOrderPage extends StatefulWidget {
  static const String id = 'food_order_page';
  const FoodOrderPage({super.key});

  @override
  State<FoodOrderPage> createState() => _FoodOrderPageState();
}

class _FoodOrderPageState extends State<FoodOrderPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xfffafafa),
        elevation: 0,
        leading: IconButton(
          onPressed: () => Navigator.of(context).pop(),
          icon: const Icon(Icons.arrow_back_ios),
          color: const Color(0xff3a3737),
        ),
        title: const Center(
          child: Text(
            "Item",
            style: TextStyle(
              color: Color(0xff3a3737),
              fontSize: 18,
              fontWeight: FontWeight.w600,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        actions: const <Widget>[
          CartIconWithBadge(),
        ],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: const Text(
                  "Your Food Cart",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3a3a3b),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const CartItem(
                productName: "Grilled salmon",
                productPrice: "\$96.0",
                productImage: riceUrl,
                productCartQuantity: "5",
              ),
              const SizedBox(
                height: 10,
              ),
              const TotalCalculationWidget(),
              const CartItem(
                productName: "Meat Vegetable",
                productPrice: "\$65.0",
                productImage: riceUrl,
                productCartQuantity: "5",
              ),
              const SizedBox(
                height: 10,
              ),
              const PromoCodeWidget(),
              const SizedBox(
                height: 10,
              ),
              Container(
                padding: const EdgeInsets.only(left: 5),
                child: const Text(
                  "Payment Method",
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xff3a3a3b),
                    fontWeight: FontWeight.w600,
                  ),
                  textAlign: TextAlign.left,
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const PayMethodWidget(),
            ],
          ),
        ),
      ),
    );
  }
}
