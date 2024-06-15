import 'package:flutter/material.dart';
import 'package:lesson4/controller/listViewDemo_controller.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/model/listViewScreen_model.dart';
import 'package:lesson4/view/web_image.dart';

class ListviewdemoScreen extends StatefulWidget {
  const ListviewdemoScreen({super.key});

  static const routeName = "/ListviewdemoScreen";

  @override
  State<StatefulWidget> createState() {
    return ListViewState();
  }
}

class ListViewState extends State<ListviewdemoScreen> {
  late ListviewdemoController con;
  late ListviewscreenModel model;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    con = ListviewdemoController(this);
    model = ListviewscreenModel();
    con.loadBookList();
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
        actions: model.selected.isEmpty ? null: [
          IconButton(onPressed: con.delete, icon: const Icon(Icons.delete),),
          IconButton(onPressed: con.cancel, icon: const Icon(Icons.cancel),),
        ],
      ),
      body: bodyview(),
    );
  }

  void callSetState(fn) => setState(fn);

  Widget bodyview() {
    if (model.booklist == null) {
      return const Center(child: CircularProgressIndicator());
    } else {
      return booklistview(model.booklist!);
    }
  }

  Widget booklistview(List<Book> booklist) {
    return ListView.builder(
      itemCount: booklist.length,
      itemBuilder: (BuildContext context,int index){
        Book book = booklist[index];
        return ListTile(
          leading:WebImage(url: book.imageURILl),
          trailing: const Icon(Icons.arrow_right),
          tileColor: model.selected.contains(index) ? Colors.lime[100] : null,
          title: Text(book.title),
          onTap: () => con.onTap(index),
          onLongPress: () => con.onLongPress(index),
        );
      },
    );
  }
}
