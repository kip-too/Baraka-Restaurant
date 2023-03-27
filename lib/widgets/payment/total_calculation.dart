import 'package:flutter/material.dart';

class TotalCalculationWidget extends StatelessWidget {
  const TotalCalculationWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      height: 150,
      decoration: BoxDecoration(boxShadow: [
        BoxShadow(
          color: const Color(0xfffae3e2).withOpacity(0.1),
          spreadRadius: 1,
          offset: const Offset(0, 1),
        ),
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
          padding:
              const EdgeInsets.only(left: 25, right: 30, top: 10, bottom: 10),
          child: Column(
            children: <Widget>[
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Grilled",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$192",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Meat Vegetable",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$102",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3a3a3b),
                      fontWeight: FontWeight.w400,
                    ),
                    textAlign: TextAlign.left,
                  ),
                ],
              ),
              const SizedBox(
                height: 15,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const <Widget>[
                  Text(
                    "Total",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3a3a3b),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  ),
                  Text(
                    "\$292",
                    style: TextStyle(
                      fontSize: 18,
                      color: Color(0xff3a3a3b),
                      fontWeight: FontWeight.w600,
                    ),
                    textAlign: TextAlign.left,
                  )
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
