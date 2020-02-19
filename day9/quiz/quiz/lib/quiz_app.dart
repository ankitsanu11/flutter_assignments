import 'dart:math';

import 'package:flutter/material.dart';

class QuizScreen extends StatefulWidget {
  QuizScreen({Key key}) : super(key: key);
  createState() => QuizScreenState();
}

class QuizScreenState extends State<QuizScreen> {
  final Map<String, bool> score = {};
  final Map choices = {
    '🍎': Colors.red,
    '🌿': Colors.green,
    '🍩': Colors.brown,
    '🍌': Colors.yellow,
    '🍇': Colors.purple,
    '🍑': Colors.orange,
  };
  int seed = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text('Score ${score.length}/6'), backgroundColor: Colors.red),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.refresh),
        onPressed: () {
          setState(() {
            score.clear();
            seed++;
          });
        },
      ),
      body: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: choices.keys.map((emoji) {
                return Draggable<String>(
                  data: emoji,
                  child: Emoji(emoji: score[emoji] == true ? '✅' : emoji),
                  feedback: Emoji(emoji: emoji),
                  childWhenDragging: Emoji(emoji: '🍎'),
                );
              }).toList()
              // draggable widgets here
              ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            crossAxisAlignment: CrossAxisAlignment.start,
            children:
                choices.keys.map((emoji) => _buildDragTarget(emoji)).toList()
                  ..shuffle(Random(seed)),
          )
        ],
      ),
    );
  }

  Widget _buildDragTarget(emoji) {
    return DragTarget<String>(
      builder: (BuildContext context, List<String> incoming, List rejected) {
        if (score[emoji] == true) {
          return Container(
            color: Colors.white,
            child: Text('Correct!'),
            alignment: Alignment.center,
            height: 40,
            width: 500,
          );
        } else {
          return Container(
            color: choices[emoji],
          );
        }
      },
      onWillAccept: (data) => data == emoji,
      onAccept: (data) {
        setState(() {
          score[emoji] = true;
        });
      },
    );
  }
}

class Emoji extends StatelessWidget {
  Emoji({Key key, this.emoji}) : super(key: key);
  final String emoji;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Material(
      color: Colors.teal,
      child: Container(
        alignment: Alignment.center,
        height: 20,
        padding: EdgeInsets.all(10),
        child: Text(
          emoji,
          style: TextStyle(color: Colors.black, fontSize: 30),
        ),
      ),
    );
  }
}
