import 'package:flutter/material.dart';

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  Widget custombutton(String btnvalue) {
    return Expanded(
      child: OutlineButton(
        padding: EdgeInsets.all(25.0),
        onPressed: () => btnclicked(btnvalue),
        child: Text(
          '$btnvalue',
          style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  TextEditingController controller = TextEditingController();
  int firnum, secnum;
  var number = "0";
  String textdisplay = "";
  String res;
  String operationperform;
  void btnclicked(String btntext) {
    if (btntext == 'AC') {
      textdisplay = "";
      firnum = 0;
      secnum = 0;
      res = "";
    } else if (btntext == "+" ||
        btntext == "-" ||
        btntext == "*" ||
        btntext == "/") {
      firnum = int.parse(textdisplay);
      res = "";
      operationperform = btntext;
    } else if (btntext == "=") {
      secnum = int.parse(textdisplay);
      if (operationperform == "+") {
        res = (firnum + secnum).toString();
      }
      if (operationperform == "-") {
        res = (firnum - secnum).toString();
      }
      if (operationperform == "*") {
        res = (firnum * secnum).toString();
      }
      if (operationperform == "/") {
        res = (firnum ~/ secnum).toString();
      }
    } else {
      res = int.parse(textdisplay + btntext).toString();
    }
    setState(() {
      textdisplay = res;
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Calculator'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: <Widget>[
            Expanded(
              child: Container(
                padding: EdgeInsets.all(25.0),
                alignment: Alignment.bottomRight,
                child: Text(
                  '$textdisplay',
                  style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
                ),
              ),
            ),
            Row(
              children: <Widget>[
                custombutton("AC"),
                custombutton('X'),
                custombutton('%'),
                custombutton('/'),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton('7'),
                custombutton('8'),
                custombutton('9'),
                custombutton('*'),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton('4'),
                custombutton('5'),
                custombutton('6'),
                custombutton('-'),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton('1'),
                custombutton('2'),
                custombutton('3'),
                custombutton('+'),
              ],
            ),
            Row(
              children: <Widget>[
                custombutton('.'),
                custombutton('0'),
                custombutton('()'),
                custombutton('='),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
