import 'package:flutter/material.dart';
import 'package:matchinggame/data.dart';
import 'package:matchinggame/tilemodel.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    pairs = getpairs();
    questions = pairs;
    pairs.shuffle();
    selected = true;
    Future.delayed(const Duration(seconds: 5), () {
      setState(() {
        pairs = getquestions();
        selected = false;
      });
    });
  }

  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.red,
        title: Text(
          "Macting Game",
        ),
      ),
      body: Container(
        padding: EdgeInsets.symmetric(vertical: 90, horizontal: 30),
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 40,
            ),
            Text("$point/40"),
            Text("Points"),
            SizedBox(
              height: 20,
            ),
            GridView(
                shrinkWrap: true,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 4,
                    crossAxisSpacing: 1.0,
                    mainAxisSpacing: 10),
                scrollDirection: Axis.vertical,
                children: List.generate(questions.length, (index) {
                  return Tile(
                    imageAssetPath: questions[index].getImageAssetPath(),
                    parent: this,
                    tilindex: index,
                  );
                })),
          ],
        ),
      ),
    );
  }
}

class Tile extends StatefulWidget {
  String imageAssetPath;

  int tilindex;
  _HomeState parent;
  Tile({this.imageAssetPath, this.parent, this.tilindex});
  @override
  _TileState createState() => _TileState();
}

class _TileState extends State<Tile> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return GestureDetector(
      onTap: () {
        if (!selected) {
          if (selectedtile != "") {
            if (selectedinmage == pairs[widget.tilindex].getImageAssetPath()) {
              print("correct");
              Future.delayed(const Duration(seconds: 2), () {});
              point = point + 10;
              questions[widget.tilindex]
                  .setImageAssetPath("assets/correct1.png");
              questions[selectedtile].setImageAssetPath("assets/correct1.png");
            } else {
              print("wrong");
            }
          } else {
            selectedtile = widget.tilindex;
            selectedinmage = pairs[widget.tilindex].getImageAssetPath();
          }
          setState(() {
            pairs[widget.tilindex].setIsSelected(true);
          });
        }
      },
      child: Container(
          margin: EdgeInsets.all(5),
          child: Image.asset(
            pairs[widget.tilindex].getIsSelected()
                ? widget.imageAssetPath
                : pairs[widget.tilindex].getImageAssetPath(),
          )),
    );
  }
}
