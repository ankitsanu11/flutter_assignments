import 'package:flutter/material.dart';
import 'package:matchinggame/tilemodel.dart';

int point = 0;
String selectedinmage = "";
int selectedtile;
bool selected = false;
List<TileModel> questions = List<TileModel>();
List<TileModel> pairs = List<TileModel>();
List<TileModel> getpairs() {
  List<TileModel> pairs = List<TileModel>();
  TileModel tileModel = TileModel();

  //1
  tileModel.setImageAssetPath("assets/ace.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();

//2

//3
  tileModel.setImageAssetPath("assets/king.png");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();
//4

//5
  tileModel.setImageAssetPath("assets/queen.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();

//6

//7
  tileModel.setImageAssetPath("assets/jack.jpeg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();

  //8

  return pairs;
}

List<TileModel> getquestions() {
  List<TileModel> pairs = List<TileModel>();
  TileModel tileModel = TileModel();

  //1
  tileModel.setImageAssetPath("assets/ques.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();

//2

//3
  tileModel.setImageAssetPath("assets/ques.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();
//4

//5
  tileModel.setImageAssetPath("assets/ques.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();

//6

//7
  tileModel.setImageAssetPath("assets/ques.jpg");
  tileModel.setIsSelected(false);
  pairs.add(tileModel);
  pairs.add(tileModel);
  tileModel = TileModel();

  //8

  return pairs;
}
