import 'package:flutter/material.dart';
import 'package:md/pages/school.dart';

import 'home.dart';

class BusinessPage extends StatelessWidget {
  const BusinessPage({super.key,required this.name});
  final String name;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Business"),),
      body: Column(
        children: [
          Text("Business content"),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "name RECEIVED from HomePage.dart: $name",
              style: TextStyle(backgroundColor: Colors.grey, fontWeight: FontWeight.w900),
            ),
          ),
          TextButton(
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => SchoolPage())
              );
            },
            child: Text("School Page"),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context),
            child: Text("Go back"),
          ),
          FloatingActionButton(
            child: Icon(Icons.home),
            onPressed: () {
              Navigator.pop(
                  context,
                  MaterialPageRoute(builder: (context) => HomePage())
              );
            }
          ),
        ],
      ),
    );
  }
}