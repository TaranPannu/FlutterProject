import 'package:flutter/material.dart';
import 'package:learningdart/list/circle.dart';
import 'package:learningdart/list/square.dart';

class MyList extends StatelessWidget {
  final List _posts = ['post 1', 'post 2', 'post 3'];
  final List _stories = [
    'story 1',
    'story 2',
    'story 3',
    'story 4',
    'story 5',
    'story 6'
  ];

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "List View",
          textScaleFactor: 2,
        ),
      ),
      body: Column(children: [
//Instagram stories
        Container(
            height: 140,
            child: ListView.builder(
                itemCount: _stories.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return MyCircle(
                    child: _stories[index],
                  );
                })),

        //Instagram posts
        Expanded(
          child: ListView.builder(
            itemCount: _posts.length,
            itemBuilder: ((context, index) {
              return MySquare(
                child: _posts[index],
              );
            }),
          ),
        ),
      ]),
      drawer: Drawer(),
    );
    /* body: ListView(children: [ //static List View
        MySquare(),
        MySquare(),
        MySquare(),

      ]),*/
  }
}
