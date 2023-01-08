import 'package:flutter/material.dart';

class MyCircle extends StatelessWidget {
  String child = "";
  MyCircle({
    required this.child,
  });
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 100,
        width: 100,
        decoration: BoxDecoration(shape: BoxShape.circle, color: Colors.pink),
        child: Center(
          child: Text(child + ""),
        ),
      ),
    );
  }
}
