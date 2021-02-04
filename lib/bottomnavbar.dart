import 'package:flutter/material.dart';

class navigationbar extends StatefulWidget {
  @override
  _navigationbarState createState() => _navigationbarState();
}

class _navigationbarState extends State<navigationbar> {
  int _currentindex = 0;

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: _currentindex,
      items: [
        BottomNavigationBarItem(
          icon: Icon(Icons.home),
          title: Text("home"),
          backgroundColor: Colors.pink,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.shop),
          title: Text("shoping"),
          backgroundColor: Colors.pink,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.cut),
          title: Text("hair"),
          backgroundColor: Colors.pink,
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.account_circle_rounded),
          title: Text("profile"),
          backgroundColor: Colors.pink,
        ),
      ],
      onTap: (index) {
        setState(() {
          _currentindex = index;
        });
      },
    );
  }
}
