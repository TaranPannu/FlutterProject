import 'package:flutter/material.dart';

class MySquare extends StatelessWidget {
  String child = "";
  MySquare({
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        color: Colors.deepPurple,
        child: Center(
          child: Text(
            child + "",
            textScaleFactor: 4,
          ),
        ),
      ),
    );
  }
}
