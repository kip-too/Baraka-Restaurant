import 'package:baraka/configs/test_url.dart';
import 'package:flutter/material.dart';

class PayMethodWidget extends StatelessWidget {
  const PayMethodWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      width: double.infinity,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            color: const Color(0xfffae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ],
      ),
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
              const EdgeInsets.only(left: 10, right: 30, top: 10, bottom: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Expanded(
                child: Container(
                  alignment: Alignment.center,
                  child: const Image(
                    width: 70,
                    height: 70,
                    image: NetworkImage(creditCardUrl),
                  ),
                ),
              ),
              const Text(
                "Credit/Debit Card",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  color: Color(0xff3a3a3b),
                ),
                textAlign: TextAlign.left,
              )
            ],
          ),
        ),
      ),
    );
  }
}
