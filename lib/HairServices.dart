import 'package:flutter/material.dart';

class HairServices {
  final String name;
  final String id;

  final String image;
  final String services_id;

  const HairServices(
      {@required this.name,
      @required this.id,
      @required this.image,
      @required this.services_id});
}

HairServices s = HairServices(name: null, id: null, image: null);
