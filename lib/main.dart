import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Guftagoo',
      theme: new ThemeData(
        primarySwatch: Colors.green,
      ),
      home: new SampleWidget(),
    );
  }
}

class SampleWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text(
          "Guftagoo",
          style: new TextStyle(color: Colors.white),
        ),
      ),
      body: new DataWidget(),
    );
  }
}

class DataWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new Center(
      child: new RandomWords(),
    );
  }
}

class RandomWords extends StatefulWidget {
  @override
  createState() => new RandomWordState();
}

class RandomWordState extends State {
  final _suggestions = <WordPair>[];
  final _biggerFont = const TextStyle(fontSize: 18.0);

  @override
  Widget build(BuildContext context) {
    return _buildSuggestions();
  }

  Widget _buildSuggestions() {
    return new ListView.builder(
        padding: const EdgeInsets.all(16.0),
        itemBuilder: (context, i) {
          if (i.isOdd) return new Divider();
          final index = i ~/ 2;
          if (index >= _suggestions.length) {
            _suggestions.addAll(generateWordPairs().take(10));
          }
          return _buildRow(_suggestions[index]);
        });
  }

  Widget _buildRow(WordPair suggestion) {
    return new ListTile(
      title: new Text(suggestion.asPascalCase, style: _biggerFont),
    );
  }
}
