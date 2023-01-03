import 'package:flutter/material.dart';
import 'package:learningdart/utils/routes.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  String name = "";
  bool changeButton = true;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: SingleChildScrollView(
        // incase of small screen we will be able to scroll otherwise error
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
              "Welcome $name",
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
                      hintText: "Enter Username", labelText: "username"),
                  onChanged: (value) {
                    name = value;
                    setState(
                        () {}); //is used to change UI by calling the build method again so now
                    //whenever we will enter something onChanged method will be called and whole UI will be changed
                  },
                ),
                TextFormField(
                    obscureText: true,
                    decoration: InputDecoration(
                        hintText: "Enter Password", labelText: "Password")),
                SizedBox(
                  height: 40.0, //used for spacing
                ),
                InkWell(
                  onTap: () async {
                    setState(() {
                      changeButton = false;
                    });
                    await Future.delayed(Duration(seconds: 2));
                    Fluttertoast.showToast(msg: "Login Pressed");
                    Navigator.pushNamed(context, MyRoutes.expRoute);
                  },
                  child: AnimatedContainer(
                    duration: Duration(seconds: 1),
                    //it is gonna be like a empty box we can built anything from this like button
                    width: changeButton ? 150 : 50,
                    //but we can't press container but we can wrap any widget with Inkwell to make it pressable
                    height: 50,
                    alignment: Alignment.center,
                    child: Text("Login",
                        style: TextStyle(
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                            color: Colors.white)),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(changeButton
                            ? 30
                            : 8), //to remove edge from border radius
                        color: Colors.deepPurple),
                  ),
                )

                /*ElevatedButton(
                    onPressed: () {
                      Navigator.pushNamed(context, MyRoutes.homeRoute);
                    },
                    style: TextButton.styleFrom(minimumSize: Size(140, 40)),
                    child: Text("Login"))*/
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
