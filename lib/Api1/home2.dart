import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';
import 'package:learningdart/Api1/user.dart';

class HomeScreen2 extends StatefulWidget {
  const HomeScreen2({super.key});

  @override
  State<HomeScreen2> createState() => _HomeScreen2State();
}

class _HomeScreen2State extends State<HomeScreen2> {
  List<User> users = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Calling API"),
      ),
      body: ListView.builder(
          itemCount: users.length,
          itemBuilder: ((context, index) {
            final user = users[index];
            final email = user.nat;
            return ListTile(
              title: Text(email.toString()),
              subtitle: Text(user.name.first),
            );
          })),
      floatingActionButton: FloatingActionButton(
        onPressed: fetchUsers,
      ),
    );
  }

  void fetchUsers() async {
    print("started");
    final response =
        await http.get(Uri.parse('https://randomuser.me/api/?results=2'));
    final body = response.body;
    final json = jsonDecode(body);
    final results = json['results'] as List<dynamic>;
    final trans = results.map((e) {
      final name = UserName(
          title: e['name']['title'],
          first: e['name']['first'],
          last: e['name']['last']);
      return User(
          gender: e['gender'], email: e['email'], nat: e['nat'], name: name);
    }).toList();
    setState(() {
      users = trans;
    });
    print("done");
  }
}
