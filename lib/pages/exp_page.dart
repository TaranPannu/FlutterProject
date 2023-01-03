import 'package:flutter/material.dart';
import 'package:learningdart/pages/home_page.dart';
import 'package:fluttertoast/fluttertoast.dart';

// ignore: must_be_immutable
class HomePag extends StatelessWidget {
  var x = 8;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EXP Activity"),
      ),
      body: Center(
          child: Column(
        children: [
          Text(
            "welcome $x",
            style: TextStyle(color: Colors.red),
            textScaleFactor: 3,
          ),
          ElevatedButton(
              onPressed: () {
                /*ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                  content: Text("Sending Message"),
                ));*/
                Fluttertoast.showToast(msg: "msg");
                // Navigator.pushNamed(context, "/home");
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => HomePage(
                      text: 'Hello taran',
                      key: null,
                    ),
                  ),
                );
              },
              child: (Text("Click"))),
        ],
      )),
      drawer: Drawer(),
    );
  }
}

//Scaffold is like a body ,having a body 

