import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';
import 'package:stack/stack.dart';

class Calculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<Calculator> {
  String radioValue = "Int";

  String expression = "";
  bool havedot = false;
  void buttonPressed(String buttonText) {
    if (buttonText == 'AC') {
      setState(() {
        expression = "";
      });
    } else if (buttonText == '=') {
      setState(() {
        try {
          Parser calc = Parser();
          Expression exp = calc.parse(expression);

          ContextModel cmodel = ContextModel();
          expression = '${exp.evaluate(EvaluationType.REAL, cmodel)}';
        } catch (e) {
          if (buttonText == "=") {
            expression = "0";
          }
        }
      });
    } else if (buttonText == '⌫') {
      setState(() {
        expression = expression.substring(0, expression.length - 1);
      });
    } else {
      String newExp = expression + buttonText;
      if (buttonText == '.') {
        if (isValidDot(newExp) && radioValue == "Dec") {
          setState(() {
            expression = newExp;
          });
        }
      } else if (['+', '÷', '×', '-', '%'].contains(buttonText)) {
        if (isValidOpp(newExp)) {
          setState(() {
            expression = newExp;
          });
        }
      } else {
        setState(() {
          expression = newExp;
        });
      }
    }
  }

  bool isValidDot(String expression) {
    int firstDot = -1, secondDot = -1;
    int length = expression.length;
    for (int i = length - 1; i >= 0; i--) {
      if (expression[i] == '.' && firstDot == -1) {
        firstDot = i;
      } else if (expression[i] == '.' && secondDot == -1) {
        secondDot = i;
      }
    }
    if (firstDot == -1 || secondDot == -1) {
      return true;
    }
    for (int i = secondDot + 1; i < firstDot; i++) {
      if (['+', '÷', '×', '-', '%'].contains(expression[i])) {
        return true;
      }
    }
    return false;
  }

  bool isValidOpp(String expression) {
    int firstOppreator = -1, secondOppreator = -1;
    int length = expression.length;
    for (int i = length - 1; i >= 0; i--) {
      if (['+', '÷', '×', '-', '%'].contains(expression[i]) &&
          firstOppreator == -1) {
        firstOppreator = i;
      } else if (['+', '÷', '×', '-', '%'].contains(expression[i]) &&
          secondOppreator == -1) {
        secondOppreator = i;
      }
    }
    if (firstOppreator == -1 || secondOppreator == -1) {
      return true;
    } else if (secondOppreator != firstOppreator - 1) {
      return true;
    } else {
      return false;
    }
  }

  void radioButtonChanges(String value) {
    setState(() {
      radioValue = value;
    });
  }

  Widget buildButton(
      String buttonText, double buttonHeight, Color buttonColor) {
    return Container(
      height: MediaQuery.of(context).size.height * 0.1 * buttonHeight,
      color: buttonColor,
      child: FlatButton(
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(0.0),
            side: BorderSide(
                color: Colors.white, width: 1, style: BorderStyle.solid)),
        padding: EdgeInsets.all(16.0),
        onPressed: () => buttonPressed(buttonText),
        child: Text(
          buttonText,
          style: TextStyle(
              fontSize: 30.0,
              fontWeight: FontWeight.normal,
              color: Colors.white),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Calculator')),
      body: Column(
        children: <Widget>[
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.fromLTRB(10, 20, 10, 0),
            child: Text(
              "$expression",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.end,
              children: <Widget>[
                Row(
                  children: <Widget>[
                    Radio(
                      value: 'Int',
                      groupValue: radioValue,
                      onChanged: radioButtonChanges,
                    ),
                    Text(
                      "Int",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
                Row(
                  children: <Widget>[
                    Radio(
                      value: 'Dec',
                      groupValue: radioValue,
                      onChanged: radioButtonChanges,
                    ),
                    Text(
                      "Dec",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ],
                ),
              ],
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width * .75,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("AC", 1, Colors.redAccent),
                      buildButton("⌫", 1, Colors.redAccent),
                      buildButton("÷", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      buildButton("7", 1, Colors.blueGrey),
                      buildButton("8", 1, Colors.blueGrey),
                      buildButton("9", 1, Colors.blueGrey),
                    ]),
                    TableRow(children: [
                      buildButton("4", 1, Colors.blueGrey),
                      buildButton("5", 1, Colors.blueGrey),
                      buildButton("6", 1, Colors.blueGrey),
                    ]),
                    TableRow(children: [
                      buildButton("1", 1, Colors.blueGrey),
                      buildButton("2", 1, Colors.blueGrey),
                      buildButton("3", 1, Colors.blueGrey),
                    ]),
                    TableRow(children: [
                      buildButton(".", 1, Colors.blueGrey),
                      buildButton("0", 1, Colors.blueGrey),
                      buildButton("%", 1, Colors.blueAccent),
                    ]),
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width * 0.25,
                child: Table(
                  children: [
                    TableRow(children: [
                      buildButton("×", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      buildButton("-", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      buildButton("+", 1, Colors.blueAccent),
                    ]),
                    TableRow(children: [
                      buildButton("=", 2, Colors.redAccent),
                    ]),
                  ],
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
