import 'package:flutter/material.dart';
import 'package:lesson4/controller/startScreen_controller.dart';
import 'package:lesson4/model/user_record.dart';

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

  void callSetState(fn) => setState(fn);

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
              child: const Text("Counter demo"),
            ),
            FilledButton.tonal(
              onPressed: con.onPressedListviewDemo,
              child: const Text("Book List view Demo"),
            ),
            const SizedBox(
              height: 12,
            ),
            Text(
              "Sigh in as: ",
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            RadioListTile<int>(
              value: 0,
              title: Text(fakeUserDB[0].email),
              subtitle: Text(fakeUserDB[0].name),
              groupValue: con.userIndex,
              onChanged: con.onChangedRedio,
            ),
            RadioListTile<int>(
              value: 1,
              title: Text(fakeUserDB[1].email),
              subtitle: Text(fakeUserDB[1].name),
              groupValue: con.userIndex,
              onChanged: con.onChangedRedio,
            ),
            FilledButton.tonal(
              onPressed: con.onPressedUserHome,
              child: const Text("Goto User Home"),
            ),
          ],
        ),
      ),
    );
  }
}
