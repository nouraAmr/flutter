import 'package:flutter/material.dart';
import 'package:mytask/ladies_hair.dart';
import 'package:mytask/widget/toihair_item.dart';

//import 'package:mytask/ladies_hair.dart';
import '../bottomnavbar.dart';
import '../dummy_data.dart';

class ToiHairScreen extends StatefulWidget {
  @override
  static const RoutName = 'category-Hair';

  _ToiHairScreenState createState() => _ToiHairScreenState();
}

class _ToiHairScreenState extends State<ToiHairScreen> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;
    // final selectMeal=DUMMY_Hair.firstWhere((Hair) => Hair.cateid==id,);
    // print(id);
    final select = DUMMY_Hair.where((Hair) {
      return Hair.cateid.contains(id);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text("beauty 911",
            style: TextStyle(
                color: Colors.white,
                fontSize: 26,
                fontWeight: FontWeight.w400)),
        centerTitle: true,
        actions: [
          IconButton(
              icon: Icon(
                Icons.shopping_cart_rounded,
                color: Colors.white,
              ),
              onPressed: null),
          IconButton(
              icon: Icon(Icons.alarm, color: Colors.white), onPressed: null),
        ],
      ),
      bottomNavigationBar: navigationbar(),
      body: ListView.builder(
        itemBuilder: (ctx, index) {
          return HairItem(
            name: select[index].name,
            image: select[index].image,
            km: select[index].km,
            days: select[index].days,
            time: select[index].time,
          );
        },
        itemCount: select.length,
      ),
    );
  }
}
