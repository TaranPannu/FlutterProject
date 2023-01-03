import 'package:flutter/material.dart';
import 'package:learningdart/pages/exp_page.dart';
import 'package:learningdart/utils/routes.dart';
import 'pages/login_page.dart';
import 'package:google_fonts/google_fonts.dart';
import 'pages/home_page.dart';
import 'pages/bottom_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    // context used to tell the location of contents int ex:MaterialApp,Homepage
    // its value can't be changed
    return MaterialApp(
      home: BottomPage(),
      themeMode: ThemeMode.light,
      theme: ThemeData(
          primarySwatch: Colors.green,
          fontFamily: GoogleFonts.lato().fontFamily), // def of light theme
      darkTheme: ThemeData(brightness: Brightness.dark),
      //initialRoute: '/',
      routes: {
        //  "/": (context) => LoginPage(),
        MyRoutes.homeRoute: (context) => LoginPage(),
        MyRoutes.loginRoute: (context) => LoginPage()
      },
    );
  }
}
