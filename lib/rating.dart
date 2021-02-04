import 'package:flutter/material.dart';
import 'package:smooth_star_rating/smooth_star_rating.dart';

class Rate extends StatefulWidget {
  @override
  _RateState createState() => _RateState();
}

class _RateState extends State<Rate> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
          child: Column(
        children: [
          SmoothStarRating(
            starCount: 5,
            isReadOnly: false,
            size: 10,
            color: Colors.yellow,
            borderColor: Colors.yellowAccent,
            allowHalfRating: true,
          )
        ],
      )),
    );
  }
}
