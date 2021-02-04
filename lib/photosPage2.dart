import 'package:flutter/material.dart';
import 'package:mytask/screens/page3_screen.dart';

class Photos extends StatelessWidget {
  final String id;
  final String name;
  final String image;

  const Photos(this.name, this.id, this.image);

  void selectcate(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(ScreenPage3.RoutName, arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () => selectcate(context),
        child: Container(
          child: Column(children: [
            Image.asset(
              image,
              height: 100,
              width: 75,
            ),
            SizedBox(height: 1),
            Text(name,
                style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold)),
          ]),
        ));
  }
}
