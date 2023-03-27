import 'package:baraka/configs/test_url.dart';
import 'package:baraka/widgets/items/add_to_cart.dart';
import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final String productName;
  final String productPrice;
  final String productImage;
  final String productCartQuantity;

  const CartItem({
    super.key,
    required this.productName,
    required this.productPrice,
    required this.productImage,
    required this.productCartQuantity,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Column(
        children: [
          Container(
            width: double.infinity,
            height: 130,
            decoration: BoxDecoration(boxShadow: [
              BoxShadow(
                color: const Color(0xfffae3e2).withOpacity(0.3),
                spreadRadius: 1,
                blurRadius: 1,
                offset: const Offset(0, 1),
              )
            ]),
            child: Card(
              color: Colors.white,
              elevation: 0,
              shape: const RoundedRectangleBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(5.0),
                ),
              ),
              child: Container(
                alignment: Alignment.center,
                padding: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 10),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  children: <Widget>[
                    SizedBox(
                      width: 100,
                      child: Align(
                        alignment: Alignment.centerLeft,
                        child: Center(
                          child: Image(
                            width: 110,
                            height: 100,
                            image: NetworkImage(productImage),
                          ),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: <Widget>[
                        const SizedBox(
                          height: 5,
                        ),
                        Expanded(
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: <Widget>[
                              Expanded(
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: <Widget>[
                                    Expanded(
                                      child: Text(
                                        productName,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          color: Color(0xff3a3a3b),
                                          fontWeight: FontWeight.w400,
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Expanded(
                                      child: Text(
                                        productPrice,
                                        style: const TextStyle(
                                          fontSize: 18,
                                          fontWeight: FontWeight.w400,
                                          color: Color(0xff3a3a3b),
                                        ),
                                        textAlign: TextAlign.left,
                                      ),
                                    )
                                  ],
                                ),
                              ),
                              // const SizedBox(
                              //   height: 49.0,
                              //   width: 35,
                              // ),
                              Container(
                                width: 150,
                                alignment: Alignment.centerRight,
                                child: Image(
                                  width: 15,
                                  height: 15,
                                  image: NetworkImage(productImage),
                                ),
                              )
                            ],
                          ),
                        ),
                        Container(
                          margin: const EdgeInsets.only(left: 20),
                          alignment: Alignment.centerRight,
                          child: const AddToCartMenu(2),
                        )
                      ],
                    )
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
