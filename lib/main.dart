import 'package:flutter/material.dart';
void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Matterial App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('Material App Bar'),
        ),
        floatingActionButton: FloatingActionButton(
            child: Icon(Icons.announcement), 
             onPressed: null
             ),
        body: TextDisplay('Press the button'),
      ),
    );
  }
}

// ignore: must_be_immutable
class TextDisplay extends StatelessWidget {
  final String _displayText;
  TextDisplay(this._displayText);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text(_displayText),
      ),
    );
  }
}
