import 'package:flutter/material.dart';

class search extends StatefulWidget {
  @override
  _searchState createState() => _searchState();
}

class _searchState extends State<search> {
  bool _folded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: Duration(milliseconds: 400),
      width: _folded ? 56 : 200,
      height: 56,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(32),
          color: Colors.white,
          boxShadow: kElevationToShadow[6]),
      child: Row(
        children: [
          Expanded(
            child: Container(
                padding: EdgeInsets.only(left: 16),
                child: !_folded
                    ? TextField(
                        decoration: InputDecoration(
                          hintText: 'search...',
                          hintStyle: TextStyle(
                            color: Colors.blue[400],
                          ),
                          border: InputBorder.none,
                        ),
                      )
                    : null),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 400),
            child: Material(
              type: MaterialType.transparency,
              child: InkWell(
                borderRadius: BorderRadius.only(
                  topLeft: (Radius.circular(_folded ? 32 : 0)),
                  topRight: (Radius.circular(32)),
                  bottomLeft: (Radius.circular(_folded ? 32 : 0)),
                  bottomRight: (Radius.circular(32)),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Icon(_folded ? Icons.search : Icons.close,
                      color: Colors.blue[900]),
                ),
                onTap: () {
                  setState(() {
                    _folded = !_folded;
                  });
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
