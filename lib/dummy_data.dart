import 'package:mytask/ladies_hair.dart';
import 'package:mytask/services.dart';

import 'HairServices.dart';
import 'ladies_categories.dart';

const DUMMY_CATEGORIES = const [
  Category(
    id: 'l1',
    title: 'Tio Hair & Beauty Salon',
    image: 'images/2.png',
    km: '0.2',
  ),
  Category(
    id: 'l2',
    title: 'Tio Hair & Beauty Salon',
    image: 'images/2.png',
    km: '0.2',
  ),
  Category(
    id: 'l3',
    title: 'Ahmed & Abdou SAlon',
    image: 'images/3.png',
    km: '0.2',
  ),
  Category(
    id: 'l4',
    title: 'Ahmed & Abdou SAlon',
    image: 'images/3.png',
    km: '0.2',
  )
];
const DUMMY_Hair = const [
  Hair(
      id: 'h1',
      cateid: 'l1',
      image: 'images/4.jpg',
      name: 'Tio Hair & Beauty Salon',
      km: '0.2 km',
      days: '(Sunday - Thrusday)',
      time: '8:00 AM - 7:00 PM'),
  Hair(
      id: 'h1',
      cateid: 'l3',
      image: 'images/4.jpg',
      name: 'Tio Salon',
      km: '0.2 km',
      days: '(Sunday - Thrusday)',
      time: '8:00 AM - 7:00 PM')
];
const DUMMY_Services = const [
  Service(id: 's1', image: 'images/h1.jpg', name: 'Hair'),
  Service(id: 's2', image: 'images/h2.jpg', name: 'Make-up'),
  Service(id: 's3', image: 'images/h3.jpg', name: 'Nails'),
  Service(id: 's4', image: 'images/h4.jpg', name: 'other')
];
const DUMMY_HairServices = const [
  HairServices(
    name: 'Haircut',
    id: 'h1',
    image: 'images/sh1.jpg',
    services_id: 's1',
  ),
  HairServices(
    name: 'Styling',
    id: 'h2',
    image: 'images/sh2.jpg',
    services_id: 's1',
  ),
  HairServices(
    name: 'Treatments',
    id: 'h3',
    image: 'images/sh3.jpg',
    services_id: 's1',
  ),
  HairServices(
    name: 'Blow-Drying',
    id: 'h4',
    image: 'images/sh4.jpg',
    services_id: 's1',
  ),
];
