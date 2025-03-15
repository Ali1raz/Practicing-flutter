# Text

```dart
Text(
  "24, blue, w900, italic",
  style: TextStyle(fontSize: 24, color: Colors.blue, fontWeight: FontWeight.w900, fontStyle: FontStyle.italic),
),
```

```dart
Container(margin: EdgeInsets.all(18), child: Text("center, 24, bg-red", textAlign: TextAlign.center, style: TextStyle(backgroundColor: Colors.red, color: Colors.white, fontSize: 24),)),
```

```dart
Text("Long text very long, overflowing, shows ellipses", overflow: TextOverflow.ellipsis, style: TextStyle(fontSize: 22),),
```

```dart
RichText(text: TextSpan(text: "ali", style: TextStyle(fontSize: 18, backgroundColor: Colors.blueGrey), children: [TextSpan(text: "raza", style: TextStyle(color: Colors.brown, fontWeight: FontWeight.w800, fontSize: 34))]))
```

# Theme

```dart
MaterialApp(
theme: ThemeData(
        primarySwatch: Colors.blue,
        appBarTheme: const AppBarTheme(
          backgroundColor: Colors.deepPurpleAccent,
          foregroundColor: Colors.white
        )
      ),
// ...
)
```

```dart
MaterialApp(
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
// ...
),
```

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
