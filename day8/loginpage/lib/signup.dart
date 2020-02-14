import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  //final scaffoldkey = GlobalKey<ScaffoldState>();
  final _formkey = GlobalKey<FormState>();
  bool autoValidatename = false;
  bool autoValidateemail = false;
  bool autoValidatepassword = false;
  bool autoValidatecompassword = false;
  bool autoValidate = false;
  String name, email, password, compassword;

  void _validateInput() {
    if (_formkey.currentState.validate()) {
      _formkey.currentState.save();
    } else {
      setState(() {
        autoValidate = true;
      });
    }
  }

  String validateName(String value) {
    String Pattern = r'(^[a-zA-Z]*$)';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Enter your Name';
    else if (!regExp.hasMatch(value)) {
      return 'Aplabhet only';
    }
    return null;
  }

  String validateEmail(String value) {
    String Pattern =
        r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Enter your Email';
    else if (!regExp.hasMatch(value)) {
      return 'Invalid input';
    }
    return null;
  }

  String validatePassword(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Enter your Password';
    else if (!regExp.hasMatch(value)) {
      return 'Invalid';
    }
    return null;
  }

  String validateCompassword(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Enter your Password';
    else if (!regExp.hasMatch(value)) {
      return 'Invalid';
    }
    return null;
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      appBar: AppBar(
        title: Text('Registeration'),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        autovalidate: autoValidate,
        child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  onTap: () {
                    setState(() {
                      autoValidatename = true;
                    });
                  },
                  autovalidate: autoValidatename,
                  decoration: InputDecoration(
                    labelText: 'Name',
                  ),
                  keyboardType: TextInputType.text,
                  validator: validateName,
                  onSaved: (String val) {
                    name = val;
                  },
                ),
                TextFormField(
                  onTap: () {
                    setState(() {
                      autoValidateemail = true;
                    });
                  },
                  autovalidate: autoValidateemail,
                  decoration: InputDecoration(
                    labelText: 'Email',
                  ),
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                  onSaved: (String val) {
                    email = val;
                  },
                ),
                TextFormField(
                  onTap: () {
                    setState(() {
                      autoValidatepassword = true;
                    });
                  },
                  autovalidate: autoValidatepassword,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      suffixIcon: Icon(Icons.remove_red_eye)),
                  keyboardType: TextInputType.text,
                  validator: validatePassword,
                  onSaved: (String val) {
                    password = val;
                  },
                  obscureText: true,
                ),
                TextFormField(
                  onTap: () {
                    setState(() {
                      autoValidatecompassword = true;
                    });
                  },
                  autovalidate: autoValidatecompassword,
                  decoration: InputDecoration(
                      labelText: 'Confirm password',
                      suffixIcon: Icon(Icons.remove_red_eye)),
                  keyboardType: TextInputType.text,
                  validator: validateCompassword,
                  onSaved: (String val) {
                    compassword = val;
                  },
                  obscureText: true,
                ),
                SizedBox(height: 100),
                RaisedButton(
                    child: Text(
                      'Sign Up',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    onPressed: _validateInput)
              ],
            )),
      ),
    );
  }
}
