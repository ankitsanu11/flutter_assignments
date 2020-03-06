import 'package:flutter/material.dart';

class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  bool _autoValidate = false;
  bool _autoValidatePassword = false;
  bool _autoValidateEmail = false;
  String _email;
  String _password;
  final _formkey = GlobalKey<FormState>();
  String validateEmail(String value) {
    String Pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Mail is Require';
    else if (!regExp.hasMatch(value)) {
      return 'wrong Format';
    }
    return null;
  }

  String validatePassword(String value) {
    String Pattern =
        r'^(((?=.*[a-z])(?=.*[A-Z]))|((?=.*[a-z])(?=.*[0-9]))|((?=.*[A-Z])(?=.*[0-9])))(?=.{6,})';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'password is Require';
    else if (!regExp.hasMatch(value)) {
      return 'password in number';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.green,
      body: Container(
        child: SingleChildScrollView(
          child: Form(
            key: _formkey,
            autovalidate: _autoValidate,
            child: Container(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              child: Column(
                children: <Widget>[
                  Container(
                    width: double.infinity,
                    height: 400,
                    decoration: BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage('assets/images/backgroundpic.jpg'),
                          fit: BoxFit.contain),
                    ),
                    child: Stack(
                      children: <Widget>[
                        Positioned(
                          child: Container(
                            margin:
                                EdgeInsets.only(top: 30, bottom: 40, right: 40),
                            child: Center(
                              child: Text("STEP2DOOR",
                                  style: TextStyle(
                                      color: Colors.white,
                                      fontSize: 40,
                                      fontWeight: FontWeight.bold)),
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.all(30.0),
                    child: Column(
                      children: <Widget>[
                        Container(
                          padding: EdgeInsets.all(5),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromRGBO(140, 140, 250, .2),
                                blurRadius: 20.0,
                                offset: Offset(0, 10),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Container(
                                padding: EdgeInsets.all(8),
                                decoration: BoxDecoration(
                                    border: Border(
                                        bottom: BorderSide(
                                            color: Colors.grey[100]))),
                                child: TextFormField(
                                  onTap: () {
                                    setState(() {
                                      _autoValidateEmail = true;
                                    });
                                  },
                                  autovalidate: _autoValidateEmail,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.person),
                                      border: InputBorder.none,
                                      hintText: "Email",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              ),
                              Container(
                                padding: EdgeInsets.all(8),
                                child: TextFormField(
                                  onTap: () {
                                    setState(() {
                                      _autoValidatePassword = true;
                                    });
                                  },
                                  autovalidate: _autoValidatePassword,
                                  decoration: InputDecoration(
                                      prefixIcon: Icon(Icons.vpn_key),
                                      border: InputBorder.none,
                                      hintText: "Password",
                                      hintStyle:
                                          TextStyle(color: Colors.grey[400])),
                                ),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          alignment: Alignment.centerRight,
                          child: GestureDetector(
                            child: Text(
                              "Forget Password?",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold),
                            ),
                            onTap: () {},
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          margin: EdgeInsets.fromLTRB(50, 0, 50, 0),
                          child: RaisedButton(
                            color: Colors.blue,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            ),
                            padding: EdgeInsets.symmetric(
                                horizontal: 40, vertical: 20),
                            child: Text('Login',
                                style: TextStyle(
                                    color: Colors.black,
                                    fontSize: 20,
                                    fontWeight: FontWeight.bold)),
                            onPressed: () async {
                              //addStringToSF();
                            },
                          ),
                        ),
                        SizedBox(
                          height: 30,
                        ),
                        Container(
                          child: Row(
                            children: <Widget>[
                              Container(
                                margin: EdgeInsets.fromLTRB(80, 0, 10, 0),
                                child: Text(
                                  'Create an account.',
                                  style: TextStyle(
                                      fontWeight: FontWeight.bold,
                                      color: Colors.black),
                                ),
                              ),
                              Container(
                                  child: GestureDetector(
                                child: Text(
                                  "Sign up?",
                                  style: TextStyle(
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                onTap: () {},
                              )),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
