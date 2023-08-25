import 'package:flutter/material.dart';

void main() => runApp(Leaderboard());

class Leaderboard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Horizontal Scrollable List'),
        ),
        body: HorizontalList(),
      ),
    );
  }
}

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView(
      // Scroll horizontally
      scrollDirection: Axis.horizontal,
      children: <Widget>[
        Container(
          width: 150.0,
          color: Colors.red,
          child: Center(child: Text('Item 1')),
        ),
        Container(
          width: 150.0,
          color: Colors.green,
          child: Center(child: Text('Item 2')),
        ),
        Container(
          width: 150.0,
          color: Colors.blue,
          child: Center(child: Text('Item 3')),
        ),
        // Add more items as needed
      ],
    );
  }
}
