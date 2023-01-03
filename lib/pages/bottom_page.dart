import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class BottomPage extends StatefulWidget {
  @override
  State<BottomPage> createState() => _BottomPageState();
}

class _BottomPageState extends State<BottomPage> {
  int _currentindex = 0;
  final tabs = [
    Scaffold(
      //  appBar: AppBar(title: Text("Home Bar")),
      backgroundColor: Color.fromARGB(255, 248, 107, 97),
      body: Center(child: Text("HOME")),
    ),
    Center(child: Text("person")),
    Center(child: Text("camera"))
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("BottomNavigation Bar"),
      ),
      body: tabs[_currentindex],
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentindex,
        type: BottomNavigationBarType.fixed,
        //backgroundColor: Colors.amber,
        items: [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: "home",
              backgroundColor: Colors.red),
          BottomNavigationBarItem(
              icon: Icon(Icons.person),
              label: "person",
              backgroundColor: Color.fromARGB(255, 54, 244, 70)),
          BottomNavigationBarItem(
              icon: Icon(Icons.camera),
              label: "camera",
              backgroundColor: Color.fromARGB(255, 98, 54, 244))
        ],
        onTap: (index) {
          setState(() {
            _currentindex = index;
          });
        },
      ),
      drawer: Text("Drawer"),
    );
  }
}
