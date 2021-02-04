//import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:mytask/dummy_data.dart';
import 'package:mytask/photosPage2.dart';
//import '../rating.dart';

class HairItem extends StatelessWidget {
  final String image;
  final String name;
  final String km;
  final String days;
  final String time;

  const HairItem(
      {@required this.image,
      @required this.name,
      @required this.km,
      @required this.days,
      @required this.time});

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {},
        child: Column(children: [
          ClipRRect(
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.circular(15),
              bottomRight: Radius.circular(15),
            ),
            child: Image.asset(
              image,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          SizedBox(height: 10),
          Container(
              /////////////
              padding: EdgeInsets.only(left: 10),
              child: Row(children: [
                Text(name,
                    style: TextStyle(
                        fontSize: 25,
                        color: Colors.black,
                        fontWeight: FontWeight.bold)),
                SizedBox(width: 15),
                Row(children: [
                  Icon(Icons.send, size: 10, color: Colors.greenAccent[400]),
                  SizedBox(width: 5),
                  Text(km,
                      style:
                          TextStyle(fontSize: 10, fontWeight: FontWeight.w400)),
                ])
              ])), ////
          SizedBox(height: 10),
          Container(
            padding: EdgeInsets.only(right: 220),
            child: Text("Working Hours",
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.w800)),
          ),
          SizedBox(height: 3),
          Container(
              padding: EdgeInsets.only(left: 20),
              child: Row(children: [
                Text(time),
                SizedBox(width: 5),
                Text(days),
              ])),
          /*Container(

   child:
      Rate(),
 )*/

          Container(
              child: Row(
            children: DUMMY_Services.map(
                (cate) => Photos(cate.name, cate.id, cate.image)).toList(),
          )),
          SizedBox(
            height: 20,
          ),
          Container(
            padding: EdgeInsets.only(left: 0),
            child: Column(children: [
              Padding(
                padding: const EdgeInsets.only(right: 240),
                child: Text("Reviews",
                    style:
                        TextStyle(fontSize: 25, fontWeight: FontWeight.bold)),
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: Text("Angie Samir",
                        style: TextStyle(
                            fontSize: 15, fontWeight: FontWeight.w500)),
                  ),
                  SizedBox(
                    width: 10,
                  ),
                  Text("October 2nd, 2019",
                      style:
                          TextStyle(fontSize: 13, fontWeight: FontWeight.w300)),
                ]),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 150),
                child: Text("Super professional,Styling arrived on time",
                    style: TextStyle(
                      fontSize: 10,
                    )),
              ),
            ]),
          )
        ]));
  }
}
