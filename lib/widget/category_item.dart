import 'package:flutter/material.dart';

import '../screens/toihair_Screen.dart';

//import 'package:flutter/painting.dart';
//import '../screens/catrgory_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final String image;
  final String km;

  void selectcate(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ToiHairScreen.RoutName, arguments: id);
  }

  CategoryItem(this.title, this.id, this.image, this.km);

  @override
  Widget build(BuildContext context) {
    //child: Text("Beauty Salons",style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold),);
    return InkWell(
      onTap: () => selectcate(context),
      child: Container(
        child: Column(
          children: [
            Image.asset(
              image,
              height: 140,
              width: 500,
            ),
            Text(title,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
            SizedBox(
              height: 5,
            ),
            Row(children: [
              Icon(Icons.send, size: 10, color: Colors.greenAccent[400]),
              SizedBox(width: 6),
              Text(km + "km",
                  style: TextStyle(
                    fontSize: 10,
                  )),
            ]),
          ],
        ),
      ),
    );
  }
}
