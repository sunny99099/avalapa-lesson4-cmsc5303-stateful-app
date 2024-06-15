import 'package:flutter/material.dart';
import 'package:lesson4/view/countdemo_Screen.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';
import 'package:lesson4/view/start_screen.dart';

class StartScreenController{
 StartState state;
 StartScreenController(this.state); 

 void onPressedCounterDemo(){
  Navigator.pushNamed(state.context, CountDemoScreen.routeName);
 }

 void onPressedListviewDemo(){
  Navigator.pushNamed(state.context, ListviewdemoScreen.routeName);
 }
}