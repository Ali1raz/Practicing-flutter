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
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white
        )
      ),
      darkTheme: ThemeData(
        brightness: Brightness.dark,
          primarySwatch: Colors.blue,
          appBarTheme: const AppBarTheme(
              backgroundColor: Colors.deepPurpleAccent,
              foregroundColor: Colors.white
          )
      ),
      themeMode: ThemeMode.dark,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Practicing Text"),
        ),
        body: Column(
            children: [
              Text(
                "24, blue, w900, italic",
              style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
              ),
              Container(
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.circular(8)
                ),
                child: Text("Container padding 16"),
              ),
              Container(
                margin: EdgeInsets.symmetric(vertical: 16),
                width: 200, height: 200,
                alignment: Alignment.bottomRight,
                decoration: BoxDecoration(
                    gradient: LinearGradient(
                      colors: [Colors.purple, Colors.deepPurpleAccent],
                      begin: Alignment.topLeft,
                    )
                ),
                child: Text("m-16 align-end", style: TextStyle(color: Colors.white),),
              ),
              Row(
                children: [
                  Container(width: 100, height: 50, color: Colors.pink,),
                  Expanded(child: Container(height: 50, margin: EdgeInsets.only(left: 8), color: Colors.green,))
                ],
              ),
              Container(
                margin: EdgeInsets.all(10),
                padding: EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                        color: Colors.blue,
                        borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text("Inner Container"),
                    ),
                    SizedBox(height: 20,),
                    Container(
                      padding: EdgeInsets.all(8),
                      decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(5)
                      ),
                      child: Text("Inner Container"),
                    )
                  ],
                ),
              )
            ],
          ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
