import 'package:flutter/material.dart';
import 'add_flashcard_screen.dart';
import 'flashcard.dart';
import 'deck.dart';
import 'flashcard_selection_screen.dart';

class DeckSelectionScreen extends StatefulWidget {
  const DeckSelectionScreen({super.key});

  @override
  _DeckSelectionScreenState createState() => _DeckSelectionScreenState();
}
class _DeckSelectionScreenState extends State<DeckSelectionScreen> {
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

  void _handleFlashcardAdded(Flashcard newCard, String deckTitle) {
    setState(() {
      decks.firstWhere((deck) => deck.title == deckTitle).cards.add(newCard);
    });
  }

  @override Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(onPressed: () => Navigator.push(context, MaterialPageRoute(builder: (context)=>AddFlashcardScreen(decks: decks, onFlashcardAdd: _handleFlashcardAdded),),),child: const Icon(Icons.add),),
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