import 'package:flutter/material.dart';

class Paymentpage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
        body: Stack(
      children: <Widget>[
        Container(
            child: Column(
          children: <Widget>[
            Expanded(
              flex: 3,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 4,
                      child: Container(
                          color: Colors.red,
                          child: Row(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  color: Colors.orange[300],
                                ),
                              ),
                            ],
                          )),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              flex: 1,
              child: Container(
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
//color:Colors.yellow,
                        child: Row(
                          children: <Widget>[
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.share, color: Colors.white),
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: CircleAvatar(
                                  backgroundColor: Colors.black,
                                  child: Icon(Icons.save, color: Colors.white),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20),
                          color: Colors.red,
                        ),
                        margin: EdgeInsets.symmetric(vertical: 25),
                        child: FlatButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: Text(
                            "                Done              ",
                            style: TextStyle(
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        )),
        Stack(
          children: <Widget>[
            Container(
              color: Colors.black,
              margin: EdgeInsets.fromLTRB(50, 170, 50, 250),
            ),
          ],
        ),
        Stack(
          children: <Widget>[
            Container(
              child: ClipPath(
                child: Container(
                  color: Colors.white,
                  margin: EdgeInsets.fromLTRB(50, 100, 55, 260),
                  child: Column(
                    children: <Widget>[
                      Expanded(
                        flex: 2,
                        child: Container(
                          margin: EdgeInsets.all(40),
                          child: Center(
                            child: Image.asset(
                              'assets/wallet.png',
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Center(
                            child: Text(
                              "Payment is completed for 2 bills",
                              style: TextStyle(
                                fontSize: 15,
                              ),
                            ),
                          ),
                        ),
                      ),
                      Expanded(
                        flex: 2,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: CircleAvatar(
                                              backgroundColor: Colors.green,
                                              child: Icon(
                                                Icons.done,
                                              )),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 15),
                                                  child: Text(
                                                    "Electricity Bill",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    "Txn ID:2356377",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Colors.grey[800]),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              "1234.00",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  child: Row(
                                    children: <Widget>[
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: CircleAvatar(
                                              backgroundColor: Colors.green,
                                              child: Icon(
                                                Icons.done,
                                              )),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 2,
                                        child: Container(
                                          child: Column(
                                            children: <Widget>[
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 15),
                                                  child: Text(
                                                    "Servant Payment",
                                                    style: TextStyle(
                                                        fontSize: 15,
                                                        fontWeight:
                                                            FontWeight.bold),
                                                  ),
                                                ),
                                              ),
                                              Expanded(
                                                flex: 1,
                                                child: Container(
                                                  margin:
                                                      EdgeInsets.only(top: 10),
                                                  child: Text(
                                                    "Txn ID:32626277",
                                                    style: TextStyle(
                                                        fontSize: 10,
                                                        color:
                                                            Colors.grey[800]),
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        flex: 1,
                                        child: Container(
                                          child: Center(
                                            child: Text(
                                              "6000.00",
                                              style: TextStyle(
                                                  fontSize: 15,
                                                  fontWeight: FontWeight.bold),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                  decoration: BoxDecoration(
                                    border: Border(
                                      top: BorderSide(
                                        color: Colors.black,
                                        // width: 3.0 --> you can set a custom width too!
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          margin: EdgeInsets.all(20),
                          decoration: BoxDecoration(
                            border: Border.all(
                              color: Colors.black,
                            ),
                            borderRadius: BorderRadius.circular(10.0),
                          ),
                          height: 20,
                        ),
                      ),
                      Expanded(
                        flex: 1,
                        child: Container(
                          child: Column(
                            children: <Widget>[
                              Expanded(
                                flex: 1,
                                child: Center(
                                  child: Text(
                                    "  Total  Amount ",
                                    style: TextStyle(
                                      fontSize: 20,
                                    ),
                                  ),
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Container(
                                  margin: EdgeInsets.only(bottom: 20),
                                  child: Center(
                                    child: Text(
                                      "7420.0",
                                      style: TextStyle(
                                          fontSize: 25,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                clipper: CustomClip1(),
              ),
            ),
          ],
        ),
      ],
    ));
  }
}

class CustomClip1 extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    path.lineTo(0, size.height);
    var curXPos = 0.0;
    var curYPos = size.height;
    var increment = size.width / 40;
    while (curXPos < size.width) {
      curXPos += increment;
      curYPos = curYPos == size.height ? size.height - 30 : size.height;
      path.lineTo(curXPos, curYPos);
    }
    path.lineTo(size.width, 0);

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
