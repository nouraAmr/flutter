import 'package:flutter/material.dart';

class Service {
  final String name;
  final String id;

  final String image;

  const Service({@required this.name, @required this.id, @required this.image});
}

Service s = Service(name: null, id: null, image: null);
