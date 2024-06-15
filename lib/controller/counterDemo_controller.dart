import 'package:flutter/material.dart';
import 'package:lesson4/view/countdemo_Screen.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';

class CounterdemoController {
  CountDemoState state;
  CounterdemoController(this.state);

  void onPressedUpArrow() {
    state.callSetState(() {
      state.model.inCounter();
      state.model.inClicker();
    });
  }

  void onPressedDownArrow() {
    state.callSetState(() {
      state.model.deCounter();
      state.model.inClicker();
    });
  }

  void onPressedResetCounter() {
    state.callSetState(() {
      state.model.reset();
    });
  }

  void onPressedListviewDemo() {
    Navigator.pushNamed(state.context, ListviewdemoScreen.routeName);
  }
}
