import 'package:flutter/material.dart';
import 'package:learningdart/Api2/post.dart';
import 'package:learningdart/Api2/post1.dart';
import 'package:learningdart/Api2/post3.dart';
import 'package:learningdart/Api2/remote_service.dart';

class HomePage2 extends StatefulWidget {
  const HomePage2({super.key});

  @override
  State<HomePage2> createState() => _HomePage2State();
}

class _HomePage2State extends State<HomePage2> {
  List<Post1>? posts;
  var isLoaded = false;

  void initState() {
    super.initState();
    getData();
  }

  getData() async {
    posts = (await RemoteService().getPosts());
    if (posts != null) {
      setState(() {
        isLoaded = true;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: 3, //post can be null ..so null check
      itemBuilder: (context, index) {
        return Container(
          child: (Text(
            isLoaded.toString(),
          )),
        );
      },
    ));
  }
}
