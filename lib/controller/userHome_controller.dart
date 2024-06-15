import 'package:flutter/material.dart';
import 'package:lesson4/view/edit_screen.dart';
import 'package:lesson4/view/userHome_Screen.dart';

class UserhomeController {
  final UserHomeState state;
  UserhomeController(this.state);

  void gotoEdit() async {
    await Navigator.pushNamed(
      state.context,
      EditScreen.routeName,
      arguments: state.widget.user,
    );

    state.callSetState((){});
  }
}
