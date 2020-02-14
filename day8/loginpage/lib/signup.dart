import 'package:flutter/material.dart';

class Signup extends StatefulWidget {
  @override
  SignupState createState() => SignupState();
}

class SignupState extends State<Signup> {
  //final scaffoldkey = GlobalKey<ScaffoldState>();
  final _formkey = GlobalKey<FormState>();
  static bool autovalidatename = false;
  bool autoValidateemail = false;
  bool autovalidatepassword = false;
  bool autovalidatecompassword = false;
  String name, email, password, compassword;

  bool autoValidate = false;
  @override
  void initState() {
    name = '';
    super.initState();
  }

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
    if (autovalidatename && value.length == 0) {
      print('hi2');
      return 'Enter your Name';
    } else if (value.length != 0 && !regExp.hasMatch(value)) {
      return 'Name only in character';
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
      return 'wrong Input';
    }
    return null;
  }

  String validatePassword(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Enter your password ';
    else if (!regExp.hasMatch(value)) {
      return 'Invalid';
    }
    return null;
  }

  String validateCompassword(String value) {
    String Pattern = r'(^[0-9]*$)';
    RegExp regExp = new RegExp(Pattern);
    if (value.length == 0)
      return 'Re-Enter your Password';
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
        title: Text('Registration'),
        centerTitle: true,
      ),
      body: Form(
        key: _formkey,
        //autovalidate: autoValidate,
        child: Container(
            padding: EdgeInsets.all(30),
            child: Column(
              children: <Widget>[
                TextFormField(
                  autovalidate: autovalidatename,
                  // onTap: () {
                  //   print('hi');
                  //   setState(() {
                  //     autovalidatename = true;
                  //   });
                  // },
                  decoration: InputDecoration(
                      labelText: 'Name', errorText: validateName(name)),
                  keyboardType: TextInputType.text,

                  validator: validateName,
                  onChanged: (String val) {
                    setState() {
                      name = val;
                    }
                  },
                  // onSaved: (String val) {
                  //   name = val;
                  // },
                ),
                TextFormField(
                  // autovalidate: autoValidateemail,
                  onTap: () {
                    setState(() {
                      autovalidatename = true;
                    });
                  },
                  // autovalidate: autoValidate,
                  decoration: InputDecoration(
                      labelText: 'Email', errorText: validateEmail(email)),
                  keyboardType: TextInputType.emailAddress,
                  validator: validateEmail,
                  onChanged: (String val) {
                    setState(() {
                      email = val;
                    });
                  },
                  onSaved: (String val) {
                    email = val;
                  },
                ),
                TextFormField(
                  autovalidate: autovalidatepassword,
                  onTap: () {
                    setState() {
                      autovalidatepassword = true;
                    }
                  },
                  //  autovalidate: autoValidate,
                  decoration: InputDecoration(
                      labelText: 'Password',
                      errorText: validatePassword(password),
                      suffixIcon: Icon(Icons.remove_red_eye)),
                  keyboardType: TextInputType.number,
                  validator: validatePassword,
                  onChanged: (String val) {
                    setState(() {
                      password = val;
                    });
                  },
                  onSaved: (String val) {
                    password = val;
                  },
                ),
                TextFormField(
                  autovalidate: autovalidatecompassword,
                  onTap: () {
                    setState() {
                      autovalidatecompassword = true;
                    }
                  },
                  //autovalidate: autoValidat,
                  decoration: InputDecoration(
                      labelText: 'Confirm password',
                      suffixIcon: Icon(Icons.remove_red_eye)),
                  keyboardType: TextInputType.number,
                  validator: validateCompassword,
                  onSaved: (String val) {
                    compassword = val;
                  },
                ),
                SizedBox(height: 100),
                RaisedButton(
                    child: Text(
                      'Register',
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    onPressed: _validateInput)
              ],
            )),
      ),
    );
  }
}
