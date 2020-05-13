import 'package:flutter/material.dart';
import 'package:guesserapp/guessnumber.dart';
import 'package:guesserapp/gusserappUI.dart';
import 'package:guesserapp/numberdesign.dart';

void main() => runApp(
      MaterialApp(
        home: Guessnumber(),
        debugShowCheckedModeBanner: false,
      ),
    );

// class Appdesign extends StatefulWidget {
//   final Widget child;

//   const Appdesign({Key key, this.child}) : super(key: key);
//   @override
//   _AppdesignState createState() => _AppdesignState();
// }

// class _AppdesignState extends State<Appdesign> {
//   void init() {
//     super.initState();
//   }

//   @override
//   Widget build(BuildContext context) {
//     // TODO: implement build
//     return Scaffold(
//       body: GridView.builder(
//         gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
//             crossAxisCount: 2, crossAxisSpacing: 5.0, mainAxisSpacing: 30),
//         scrollDirection: Axis.vertical,
//         itemCount: 9,
//         itemBuilder: (BuildContext context, int index) {
//           return Column(
//             children: <Widget>[
//               Guessnumber(),
//             ],
//           );
//         },
//       ),
//     );
//   }
// }
