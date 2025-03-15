import 'package:flutter/material.dart';
import 'package:md/pages/home.dart';

class SchoolPage extends StatelessWidget {
  const SchoolPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("School"),),
      body: Center(
        child: Column(
          children: [
            Text("School content"),
            TextButton(
              onPressed: () => Navigator.pop(context),
              child: Text("Go back"),
            ),
            FloatingActionButton(
                child: Icon(Icons.home),
                onPressed: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => HomePage())
                  );
                }
            )
          ],
        ),
      ),
    );
  }
}