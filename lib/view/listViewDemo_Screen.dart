import 'package:flutter/material.dart';

class ListviewdemoScreen extends StatefulWidget{
  const ListviewdemoScreen({super.key});

  static const routeName ="/ListviewdemoScreen";

  @override
  State<StatefulWidget> createState() {
    return ListViewState();
  }

}

class ListViewState extends State<ListviewdemoScreen>{
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    print("Listviewdemo Screen: initState()");
  }

  @override
  void dispose() {
    print("ListviewDemo Screen: dispose()");
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    print("ListviewDemo Screen: Build()");
    return Scaffold(
      appBar: AppBar(
        title: const Text("List view Demo"),
      ),
      body: const Text("List view demo body"), 
    );
  }

}