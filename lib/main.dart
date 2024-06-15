import 'package:flutter/material.dart';
import 'package:lesson4/view/countdemo_Screen.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';
import 'package:lesson4/view/start_screen.dart';

void main() {
  runApp(const Lesson4App());
}

class Lesson4App extends StatelessWidget {
  const Lesson4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      initialRoute: StartScreen.rountName,
      routes: {
        StartScreen.rountName:(context) => const StartScreen(),
        CountDemoScreen.routeName: (context) => const CountDemoScreen(),
        ListviewdemoScreen.routeName: (context) =>const ListviewdemoScreen(),
      },

    );
  }
}
