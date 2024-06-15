import 'package:flutter/material.dart';
import 'package:lesson4/controller/startScreen_controller.dart';

class StartScreen extends StatefulWidget {
  const StartScreen({super.key});

  static const rountName = "/StartScreen";

  @override
  State<StatefulWidget> createState() {
    return StartState();
  }
}

class StartState extends State<StartScreen> {
  late StartScreenController con;

  @override
  void initState() {
    super.initState();
    con = StartScreenController(this);
    print("Start Screen: initState()");
  }

  @override
  void dispose() {
    // TODO: implement dispose
    print("Start Screen: dispose()");
    super.dispose();
    
  }
  @override
  Widget build(BuildContext context) {
    print("Start Screen: Build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Start Screen"),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            FilledButton(
                onPressed: con.onPressedCounterDemo,
                child: const Text("Counter demo")),
            FilledButton.tonal(
                onPressed: con.onPressedListviewDemo,
                child: const Text("Book List view Demo"))
          ],
        ),
      ),
    );
  }
}
