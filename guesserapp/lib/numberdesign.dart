import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Appdesign extends StatefulWidget {
  final Widget child;

  const Appdesign({Key key, this.child}) : super(key: key);
  @override
  _AppdesignState createState() => _AppdesignState();
}

class _AppdesignState extends State<Appdesign> {
  List data = ['data', 'hello'];
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 30),
          scrollDirection: Axis.vertical,
          itemCount: data.length,
          itemBuilder: (BuildContext context, int index) {
            return Column(
              children: <Widget>[
                Container(
                  child: widget.child,
                )
              ],
            );
          }),
    );
  }
}
