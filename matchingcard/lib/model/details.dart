import 'package:flip_card/flip_card.dart';
import 'package:flutter/cupertino.dart';

class HomeModel extends ChangeNotifier {
  bool _flip; //
  int _previousValue;

  set flip(bool flip) {
    this._flip = flip;
  }

  bool get flip => _flip;
  set previousValue(int previousValue) {
    this._previousValue = previousValue;
  }

  int get previousValue => _previousValue;

//  set flipontouch(List<bool> flipontouch)
//   {
//     this._flipontouch=flipontouch;

//   }
// //  List<bool> get flipontouch=> _flipontouch;

// set cardKey(List<GlobalKey<FlipCardState>> cardKey)
//   {
//     this._cardKey=cardKey;

//   }
//  List<GlobalKey<FlipCardState>> get cardKey=> _cardKey;

  notifyListeners();
}
