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
          title: Text("Practicing Images"),
        ),
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Hy Flutter",
                style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
                ),
                Padding(padding:EdgeInsets.all(8), child: Image.asset('assets/images/marek.jpg'),),
                Padding(padding: EdgeInsets.all(8), child: Image.network('https://picsum.photos/250?image=8'),),
                Padding(padding: EdgeInsets.all(8), child: Image.network('https://docs.flutter.dev/assets/images/404/dash_404.png'),),
              ],
            ),
        ),
      ),
      debugShowCheckedModeBanner: false,
    );
  }
}
