import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "FlashCards App",
      theme: ThemeData(
        primarySwatch: Colors.blue,
        scaffoldBackgroundColor: Colors.grey[100],
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practicing Text"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                "24, blue, w900, italic",
              style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
              ),
              Container(margin: EdgeInsets.all(18), child: Text("center, 24, bg-red", textAlign: TextAlign.center, style: TextStyle(backgroundColor: Colors.red, color: Colors.white, fontSize: 24),)),
              Text("Long text very long, overflowing, shows ellipses", overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 22),),
              RichText(text: TextSpan(text: "ali", style: TextStyle(fontSize: 18, backgroundColor: Colors.blueGrey), children: [TextSpan(text: "raza", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w800, fontSize: 34))]))
            ],
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
