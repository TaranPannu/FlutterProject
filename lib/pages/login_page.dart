import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: Column(
        children: <Widget>[
          Image.asset(
            "/Users/taranpreetsingh/Downloads/FlutterDev/sdk/learningdart/assets/images/login.png",
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 20.0, //used for spacing
          ),
          Text(
            "welcome",
            textScaleFactor: 2,
          ),
          SizedBox(
            height: 20.0, //used for spacing
          ),
          Padding(
            padding:
                const EdgeInsets.symmetric(vertical: 16.0, horizontal: 32.0),
            child: Column(children: [
              TextFormField(
                  decoration: InputDecoration(
                      hintText: "Enter Username", labelText: "username")),
              TextFormField(
                  obscureText: true,
                  decoration: InputDecoration(
                      hintText: "Enter Password", labelText: "Password")),
              SizedBox(
                height: 20.0, //used for spacing
              ),
              ElevatedButton(
                  onPressed: () {
                    print("button pressed");
                  },
                  style: TextButton.styleFrom(),
                  child: Text("Login"))
            ]),
          ),
        ],
      ),
    );
  }
}
