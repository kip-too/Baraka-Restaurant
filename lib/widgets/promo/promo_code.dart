import 'package:flutter/material.dart';

class PromoCodeWidget extends StatelessWidget {
  const PromoCodeWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Container(
        padding: const EdgeInsets.only(left: 3, right: 3),
        decoration: BoxDecoration(boxShadow: [
          BoxShadow(
            color: const Color(0xfffae3e2).withOpacity(0.1),
            spreadRadius: 1,
            blurRadius: 1,
            offset: const Offset(0, 1),
          ),
        ]),
        child: TextFormField(
          decoration: InputDecoration(
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: Color(0xffe6e1e1),
                  width: 1.0,
                ),
              ),
              enabledBorder: OutlineInputBorder(
                borderSide: const BorderSide(
                  color: Color(0xffe6e1e1),
                  width: 1.0,
                ),
                borderRadius: BorderRadius.circular(7),
              ),
              fillColor: Colors.white,
              hintText: 'Add Your Promo Code',
              filled: true,
              suffixIcon: IconButton(
                  onPressed: () {
                    debugPrint('222');
                  },
                  icon: const Icon(
                    Icons.local_offer,
                    color: Color(0xfffd2c2c),
                  ))),
        ),
      ),
    );
  }
}
