import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:fluttertoast/fluttertoast.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<dynamic> users = [];

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
            final email = user['email'];
            return ListTile(
              /*leading: CircleAvatar(
                child: Text(""),//if child is text then it will be circle
              ),*/
              leading: ClipRRect(
                borderRadius: BorderRadius.circular(100),
                child: Image.network(user['picture']['thumbnail']), //
              ),
              title: Text(email),
              subtitle: Text(user['name']['first']),
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
    setState(() {
      users = json['results'];
    });
  }
}
