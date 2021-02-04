import 'package:flutter/material.dart';

class Hair {
  final String id;

  final String cateid;
  final String image;
  final String name;
  final String km;
  final String days;
  final String time;

  const Hair({
    this.cateid,
    @required this.km,
    @required this.id,
    @required this.image,
    @required this.name,
    @required this.days,
    @required this.time,
  });
}

Hair l1 = Hair(
    id: null,
    cateid: null,
    name: null,
    image: null,
    km: null,
    days: null,
    time: null);
