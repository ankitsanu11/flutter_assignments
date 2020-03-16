import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:math_expressions/math_expressions.dart';

class SimpleCalculator extends StatefulWidget {
  @override
  _SimpleCalculatorState createState() => _SimpleCalculatorState();
}

class _SimpleCalculatorState extends State<SimpleCalculator> {
  String equation = "0";
  var regex;
  String result = "0";
  String expression = "";
  double equationFontSize = 38.0;
  double resultFontSize = 48.0;
  String radioValue = "Int";
  bool isButtonDisable;
  bool haveDot = false;
  bool isDotDisbaled = true;
  bool haveOpp = false;
  buttonPressed(String buttonText) {
    if (radioValue == 'Int') {
      if (buttonText == '.') {
        isButtonDisable ? null : result;
      }
    }

    setState(() {
      if (buttonText == "AC") {
        equation = "0";
        result = "0";
        equationFontSize = 38.0;
        resultFontSize = 48.0;
      } else if (buttonText == "⌫") {
        equationFontSize = 48.0;
        resultFontSize = 38.0;

        equation = equation.substring(0, equation.length - 1);
        if (equation == "") {
          equation = "0";
        }
      } else if (buttonText == "=") {
        equationFontSize = 38.0;
        resultFontSize = 48.0;

        expression = equation;
        expression = expression.replaceAll('×', '*');
        expression = expression.replaceAll('÷', '/');

        try {
          Parser calc = Parser();
          Expression exp = calc.parse(expression);

          ContextModel cmodel = ContextModel();
          result = '${exp.evaluate(EvaluationType.REAL, cmodel)}';
        } catch (e) {
          if (buttonText == "=") {
            equation = "0";
            result = "0";
          }
        }
      } else {
        equationFontSize = 48.0;
        resultFontSize = 38.0;
        if (equation == "0") {
          equation = buttonText;
        } else {
          print(haveDot);
          if (buttonText == '.') {
            equation = equation + (!haveDot ? '.' : '');
            haveDot = true;
          } else {
            if (['+', '÷', '×', '-', '%'].contains(buttonText)) {
              haveDot = false;
              equation = equation + (!haveOpp ? buttonText : '');
              haveOpp = true;
            } else {
              equation = equation + buttonText;
              haveOpp = false;
            }
          }
        }
      }
    });
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
              equation,
              style: TextStyle(fontSize: equationFontSize),
            ),
          ),
          Container(
            alignment: Alignment.bottomRight,
            padding: EdgeInsets.fromLTRB(10, 30, 10, 0),
            child: Text(
              result,
              style: TextStyle(fontSize: resultFontSize),
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
