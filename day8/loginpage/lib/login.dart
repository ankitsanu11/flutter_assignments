import 'package:flutter/material.dart';
import 'package:loginpage/signup.dart';
import 'package:loginpage/blog.dart';

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
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  @override
  Widget build(BuildContext context) {
    void show_dialog() {
      showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              content: Container(
                height: 200,
                width: 300,
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "New Password",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: new BorderRadius.circular(25.0),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: EdgeInsets.all(20),
                      child: TextFormField(
                        decoration: InputDecoration(
                          labelText: "Confirm Password",
                          fillColor: Colors.white,
                          border: new OutlineInputBorder(
                            borderRadius: BorderRadius.circular(
                              25,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            );
          });
    }

    return Scaffold(
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
                      child: Image.asset('./assets/images/icon.jpg'),
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
                margin: EdgeInsets.all(10),
                child: Column(
                  children: <Widget>[
                    Expanded(
                      flex: 1,
                      child: Container(
                        child: TextField(
                          controller: email,
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
                          controller: password,
                          decoration: InputDecoration(
                            prefixIcon: Icon(Icons.vpn_key),
                            labelText: 'Password',
                            border: OutlineInputBorder(
                              borderSide: BorderSide(width: 4),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Expanded(
                      child: Container(
                        margin: EdgeInsets.fromLTRB(170.0, 00.0, 00.0, 70.0),
                        child: FlatButton(
                          onPressed: () {
                            setState(() {
                              show_dialog();
                            });
                            /*...*/
                          },
                          child: Text(
                            "Forget Password?",
                            style: TextStyle(fontSize: 15),
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
                                    if (email.text != '' &&
                                        email.text != null &&
                                        password.text != '' &&
                                        password.text != null &&
                                        email.text == password.text)
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                            builder: (context) => Blogs()),
                                      );
                                  },
                                  color: Colors.blueAccent,
                                  textColor: Colors.white,
                                ),
                              ),
                            ),
                            Expanded(
                              flex: 1,
                              child: Container(
                                child: RaisedButton(
                                  child: Text("SignUp"),
                                  onPressed: () {
                                    print(email.text);

                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) => Signup()),
                                    );
                                  },
                                  color: Colors.red,
                                  textColor: Colors.yellow,
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
            ),
            Expanded(flex: 1, child: Container())
          ],
        ),
      ),
    );
  }
}
