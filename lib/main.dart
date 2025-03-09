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
      home: DeckSelectionScreen(),
      debugShowCheckedModeBanner: false,
    );
  }
}


class Flashcard {
  final String question;
  final String answer;

  const Flashcard({required this.question, required this.answer});
}

class Deck {
  final String title;
  final List<Flashcard> cards;

  Deck({ required this.title, required this.cards });
}

class DeckSelectionScreen extends StatelessWidget {
  final List<Deck> decks = [
    Deck(
      title: "Flutter Basics",
      cards: [
        Flashcard(question: "What is Flutter?", answer: "Google UI toolkit for building natively compiled apps"),
        Flashcard(question: "What language does flutter use?", answer: "Dart"),
      ]
    ),
    Deck(
      title: "Dart",
      cards: [
        Flashcard(question: "what is dart mixins?", answer: "way to reuse code across multiple class."),
        Flashcard(question: "what is null safety in dart?", answer: "Feature that prevents null reference exception."),
      ]
    )
  ];

  @override Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Choose a deck")),
      body: ListView.builder(
        itemCount: decks.length,
          itemBuilder: (context, index) {
        return Card(
          margin: const EdgeInsets.all(8),
          child: ListTile(
            title: Text(decks[index].title),
            subtitle: Text('${decks[index].cards.length} cards'),
            trailing: Icon(Icons.arrow_forward),
            onTap: ()  {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => FlashcardScreen(deck: decks[index])
                  )
              );
            },
          ),
        );
      }),
    );
  }
}

class FlashcardScreen extends StatefulWidget {
  final Deck deck;
  const FlashcardScreen({super.key, required this.deck});

  @override
  _FlashcardScreenState createState() => _FlashcardScreenState();
}

class _FlashcardScreenState extends State<FlashcardScreen> {
  bool _showQuestion = true;
  int _currentCardIndex = 0;

  void _toggleCard() {
    setState(() {
      _showQuestion = !_showQuestion;
    });
  }

  void _nextCard() {
    setState(() {
      _currentCardIndex = (_currentCardIndex+1) % widget.deck.cards.length;
      _showQuestion = true;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.deck.title),
        leading: IconButton(
            onPressed: () => Navigator.pop(context),
            icon: Icon(Icons.arrow_back)),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: _toggleCard,
              child: Card(
                elevation: 8,
                shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8),),
                child: Container(
                  width: 300,
                  height: 200,
                  padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                  child: Center(
                    child: Text(
                      _showQuestion ? widget.deck.cards[_currentCardIndex].question:
                          widget.deck.cards[_currentCardIndex].answer,
                      style: const TextStyle(fontSize: 20),
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30),
            ElevatedButton(onPressed: _nextCard, child: const Text("next ")),
          ],
        ),
      ),
    );
  }
}
