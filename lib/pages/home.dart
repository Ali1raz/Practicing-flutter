import 'package:flutter/material.dart';
import 'package:md/pages/business.dart';

final String name = "Ali Raza";

class HomePage extends StatelessWidget {
  const HomePage({super.key, this.title = ''});
  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Home page"),),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text("Home content"),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "TITLE RECEIVED from main.dart: $title",
                style: TextStyle(backgroundColor: Colors.grey, fontWeight: FontWeight.w900),
              ),
            ),
            TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => BusinessPage(name: name))
                  );
                },
                child: Text("Business Page"),
            )
          ],
        ),
      ),
    );
  }
}