import 'package:flutter/material.dart';
import 'package:loginpage/second_page.dart';
import 'package:loginpage/thridpage.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: new LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => new LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          children: <Widget>[
            Expanded(
              flex: 2,
              child: Container(
                  child: Column(
                children: <Widget>[
                  Expanded(
                    flex: 3,
                    child: Container(
                      width: 200,
                      height: 200,
                      child: Image.asset('./assets/images/travel_logo.jpg'),
                    ),
                  ),
                  Expanded(
                    flex: 1,
                    child: Container(
                      width: 700,
                      alignment: Alignment.center,
                      child: Text('Welcome to Travel with Us'),
                      color: Colors.orange,
                    ),
                  )
                ],
              )),
            ),
            Expanded(
              flex: 3,
              child: Container(
                padding: EdgeInsets.symmetric(horizontal: 30, vertical: 20),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.person),
                            labelText: 'Emailid',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                            ),
                          ),
                        ),
                        // color: Colors.amber,
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: TextField(
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 2),
                            ),
                          ),
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
                                child: RaisedButton(
                                  child: Text("Login"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => ThirdPage()),
                                    );
                                  },
                                  color: Colors.red,
                                  textColor: Colors.yellow,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: RaisedButton(
                                  child: Text("SignUp"),
                                  onPressed: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => SecondPage()),
                                    );
                                  },
                                  color: Colors.red,
                                  textColor: Colors.yellow,
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
      ),
    );
  }
}
