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

# Container

- Add padding and margins: Control spacing around and outside a **child widget**.
- Apply decorations: Add backgrounds, borders, and shadows.
- Set size constraints: Define the width and height of the widget.
- Transform: Rotate, scale, or translate the child.
- Hold a child: It can hold a single child widget.
- **Don't use this only for padding or margin.**

```dart
Container(
  padding: EdgeInsets.all(8),
  decoration: BoxDecoration(
    color: Colors.blue,
    borderRadius: BorderRadius.circular(5)
  ),
  child: Text("Inner Container"),
),
```

```dart
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
```

# Image

## To add assets to your application, add an assets section, like this:
```yaml
assets:
- assets/images/
```
## Usage

### local:

```dart
Image.asset('assets/images/marek.jpg')
```

## Drawer

```dart
Scaffold(
// ...
    drawer: Drawer(
        child: ListView(
            padding: EdgeInsets.zero,
            children: [
                const DrawerHeader(
                    decoration: BoxDecoration(color: Colors.blue),
                    child: Text("Header"),
          ),
        ListTile(
            title: const Text('Home'),
            selected: _selectedIndex == 0,
            onTap: () {
                // do anything ...
                _onItemTapped(...);
                // then close drawer
                Navigator.pop(context);
            },
        ),
        // ..
)
```

## push() and pop()

```dart
TextButton(
    onPressed: () {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => BusinessPage())
      );
    },
    child: Text("Business Page"),
)
```

## pop():

```dart
TextButton(
  onPressed: () => Navigator.pop(context),
  child: Text("Go back"),
),
```

---

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.
