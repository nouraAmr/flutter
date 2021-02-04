import 'package:flutter/material.dart';

class Page3_Item extends StatelessWidget {
  final String name;
  final String id;

  final String image;
  final String services_id;

  Page3_Item(
    this.id,
    this.image,
    this.name,
    this.services_id,
  );

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Padding(
        padding: const EdgeInsets.all(2.0),
        child: Container(
          child: Column(children: [
            Container(
              child: Image.asset(
                image,
                width: 100,
                height: 150,
              ),
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),
//shape: BoxShape.circle,
                  boxShadow: [BoxShadow(color: Colors.grey[300])]),
            ),
            SizedBox(height: 8),
            Text(name,
                style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold)),
          ]),
        ),
      ),
    );
  }
}
