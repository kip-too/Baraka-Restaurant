import 'package:flutter/material.dart';

class BottomMenu extends StatelessWidget {
  const BottomMenu({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          Column(
            children: const <Widget>[
              Icon(
                Icons.timelapse,
                color: Color(0xff404aff),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "12pm-3pm",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: const <Widget>[
              Icon(
                Icons.directions,
                color: Color(0xff23c58a),
                size: 35,
              ),
              Text(
                "3.5km",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              ),
            ],
          ),
          Column(
            children: const <Widget>[
              Icon(
                Icons.map,
                color: Color(0xffff0654),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Map View",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          ),
          Column(
            children: const <Widget>[
              Icon(
                Icons.directions_bike,
                color: Color(0xffe95959),
                size: 35,
              ),
              SizedBox(
                height: 15,
              ),
              Text(
                "Delivery",
                style: TextStyle(
                  fontSize: 14,
                  color: Color(0xffa9a9a9),
                  fontWeight: FontWeight.w300,
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
