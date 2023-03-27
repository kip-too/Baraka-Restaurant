import 'package:baraka/configs/animation/scale_route.dart';
import 'package:baraka/configs/test_url.dart';
import 'package:baraka/screens/order/food_order_page.dart';
import 'package:flutter/material.dart';

import '../../widgets/bottom/bottom_menu.dart';
import '../../widgets/detailcontent/detail_content_menu.dart';
import '../../widgets/foodtitle/food_title.dart';

class FoodDetailsPage extends StatefulWidget {
  static const String id = 'food_details_page';
  const FoodDetailsPage({super.key});

  @override
  State<FoodDetailsPage> createState() => _FoodDetailsPageState();
}

class _FoodDetailsPageState extends State<FoodDetailsPage> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: const Color(0xfffafafa),
          elevation: 0,
          leading: IconButton(
            icon: const Icon(
              Icons.arrow_back_ios,
              color: Color(0xff3a3737),
            ),
            onPressed: () => Navigator.of(context).pop(),
          ),
          actions: <Widget>[
            IconButton(
              icon: const Icon(
                Icons.business_center,
                color: Color(0xff3a3737),
              ),
              onPressed: () {
                Navigator.push(
                    context, ScaleRoute(page: const FoodOrderPage()));
              },
            ),
          ],
        ),
        body: Container(
          padding: const EdgeInsets.only(
            left: 15,
            right: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: <Widget>[
              Card(
                semanticContainer: true,
                clipBehavior: Clip.antiAliasWithSaveLayer,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(3.0),
                ),
                elevation: 1,
                margin: const EdgeInsets.all(5),
                child: const Image(image: NetworkImage(riceUrl)),
              ),
              const FoodTitleWidget(
                  productName: "Grilled Salmon",
                  productPrice: "\$96.00",
                  productHost: "pizza hut"),
              const SizedBox(
                height: 15,
              ),
              const PreferredSize(
                preferredSize: Size.fromHeight(50.0),
                child: TabBar(
                  labelColor: Color(0xfffd3f40),
                  indicatorColor: Color(0xfffd3f40),
                  unselectedLabelColor: Color(0xffa4a1a1),
                  indicatorSize: TabBarIndicatorSize.label,
                  labelStyle: TextStyle(fontWeight: FontWeight.w500),
                  tabs: [
                    Tab(
                      text: 'Food Details',
                    ),
                    Tab(
                      text: 'Food Reviews',
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 150,
                child: TabBarView(
                  children: [
                    Container(
                      color: Colors.white24,
                      child: const DetailContentMenu(),
                    ),
                  ],
                ),
              ),
              //const BottomMenu(),
            ],
          ),
        ),
      ),
    );
  }
}
