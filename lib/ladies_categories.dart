import 'package:flutter/material.dart';

class Category {
  final String id;

  final String image;
  final String title;
  final String km;

  const Category(
      {@required this.km,
      @required this.id,
      @required this.image,
      @required this.title});

  String get name => null;

  String get services_id => null;
}

Category l1 = Category(id: null, title: null);
