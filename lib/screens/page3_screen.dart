import 'package:flutter/material.dart';
import 'package:mytask/dummy_data.dart';
import 'package:mytask/widget/page3_item.dart';

import '../bottomnavbar.dart';

class ScreenPage3 extends StatefulWidget {
  @override
  static const RoutName = 'Services-Hair';

  _ScreenPage3State createState() => _ScreenPage3State();
}

class _ScreenPage3State extends State<ScreenPage3> {
  @override
  Widget build(BuildContext context) {
    final id = ModalRoute.of(context).settings.arguments as String;

    final select = DUMMY_HairServices.where((item) {
      return item.services_id.contains(id);
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
      body: Padding(
        padding: const EdgeInsets.only(top: 20),
        child: Container(
          // child:Text(),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 30,
            ),
            children: DUMMY_HairServices.map((cate) => Page3_Item(
                cate.id, cate.image, cate.name, cate.services_id)).toList(),
          ),
        ),
      ),
    );
  }
}

/*ListView.builder(
        itemBuilder:(context,index){
          return
        Page3_Item(
          name:select[index].name ,
          image:select[index].image,
        );
        },

         itemCount:select.length ,
          ),*/
