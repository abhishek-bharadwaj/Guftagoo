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
    final wordPair = new WordPair.random();
    return new Center(
      child: new Text(wordPair.asPascalCase),
    );
  }
}
