import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson4/controller/counterDemo_controller.dart';
import 'package:lesson4/model/counter.dart';

class CountDemoScreen extends StatefulWidget {
  const CountDemoScreen({super.key});

  static const routeName = "/CountDemoScreen";

  @override
  State<StatefulWidget> createState() {
    return CountDemoState();
  }
}

class CountDemoState extends State<CountDemoScreen> {
  late Counter model;
  late CounterdemoController con;

  @override
  void initState() {
    super.initState();
    print("Countdemo Screen: initState()");
    model = Counter();
    con = CounterdemoController(this);
  }

  @override
  void dispose() {
    print("Countdemo Screen: dispose()");
    super.dispose();
  }

  void callSetState(VoidCallback fn) {
    setState(fn);
  }

  @override
  Widget build(BuildContext context) {
    print("Countdemo Screen: Build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text("Conter deme"),
      ),
      body: Container(
        padding: const EdgeInsets.all(8),
        width: MediaQuery.of(context).size.width,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: con.onPressedDownArrow,
                    icon: const Icon(Icons.arrow_downward),
                    iconSize: 50.0,
                  ),
                ),
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Container(
                      color: Colors.amber[100],
                      padding: const EdgeInsets.fromLTRB(30, 12, 30, 12),
                      child: Text(
                        "${model.value}",
                        style: Theme.of(context).textTheme.displayLarge,
                      ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 1,
                  child: IconButton(
                    onPressed: con.onPressedUpArrow,
                    icon: const Icon(Icons.arrow_upward),
                    iconSize: 50.0,
                  ),
                ),
              ],
            ),
            Text(
              "# of clicks = ${model.clicks}",
              style: Theme.of(context).textTheme.headlineLarge,
            ),
            const SizedBox(
              height: 12,
            ),
            FilledButton.tonal(
              onPressed: con.onPressedResetCounter,
              child: const Text("Reset Counter"),
            ),
            FilledButton.tonal(
                onPressed: con.onPressedListviewDemo,
                child: const Text("Book List view Demo"))
          ],
        ),
      ),
    );
  }
}
