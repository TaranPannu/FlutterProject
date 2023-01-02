import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final String name = "Tuesday";
    return Scaffold(
      appBar: AppBar(
        title: Text("Catalog App"),
      ),
      body: Center(
        child: Container(
          child: Text(
              "$name welcome to flutter"), // for more than one word ${name} or + name.
        ),
      ),
      drawer: Drawer(),
    );
  }
}
//Scaffold is like a body ,having a body 