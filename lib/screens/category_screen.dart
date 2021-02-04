import 'package:flutter/material.dart';
import 'package:mytask/dummy_data.dart';
import '../bottomnavbar.dart';
import '../main_drawer.dart';
import '../widget/category_item.dart';
import 'package:mytask/search.dart';

//import '../widget/toihair_item.dart';
//import 'package:mytask/ladies_categories.dart';

class CategoriesScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
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
      backgroundColor: Colors.pink[50],
      body: Column(
        children: [
          Container(
            // height: MediaQuery.of(context).size.height *.2,

            child: search(),
          ),
          Container(
            height: MediaQuery.of(context).size.height * .7,
            child: GridView(
              padding: EdgeInsets.all(25),
              children: DUMMY_CATEGORIES
                  .map((cate) =>
                      CategoryItem(cate.title, cate.id, cate.image, cate.km))
                  .toList(),
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                maxCrossAxisExtent: 150,
                childAspectRatio: 1 / 2,
                mainAxisSpacing: 0,
                crossAxisSpacing: 15,
              ),
            ),
          ),
        ],
      ),
      drawer: MainDrawer(),
    );
  }
}
