import 'package:flutter/material.dart';
import 'package:lesson4/model/user_record.dart';
import 'package:lesson4/view/countdemo_Screen.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';
import 'package:lesson4/view/start_screen.dart';
import 'package:lesson4/view/userHome_Screen.dart';

class StartScreenController {
  StartState state;
  StartScreenController(this.state);
  int userIndex = 0;

  void onPressedCounterDemo() {
    Navigator.pushNamed(state.context, CountDemoScreen.routeName);
  }

  void onPressedListviewDemo() {
    Navigator.pushNamed(state.context, ListviewdemoScreen.routeName);
  }

  void onChangedRedio(int? selectedIndex) {
    if (selectedIndex == null) return;
    state.callSetState(() {
      userIndex = selectedIndex;
    });
  }

  void onPressedUserHome() {
    Navigator.pushNamed(
      state.context,
      UserHomeScreen.routeName,
      arguments: fakeUserDB[userIndex],
    );
  }
}
