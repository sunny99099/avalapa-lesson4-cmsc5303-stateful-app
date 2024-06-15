import 'package:flutter/material.dart';
import 'package:lesson4/controller/database_controller.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/view/bookdetailview__screen.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';

class ListviewdemoController {
  ListViewState state;
  ListviewdemoController(this.state);

  Future<void> loadBookList() async {
    state.model.booklist = await DatabaseController.getBooksFromDB();
    state.callSetState(() {});
  }

  void onTap(Book book) {
    Navigator.pushNamed(
      state.context,
      BookDetailViewScreen.routeName,
      arguments: book,
    );
  }
  void onLongPress(int index){
   state.callSetState((){
    if(state.model.selected.contains(index)){
      state.model.selected.remove(index);
    }
    else{
      state.model.selected.add(index);
    }
   });
    
  }

  void cancel(){
    state.callSetState((){
      state.model.selected.clear();
    });
  }

  void delete(){

  }
}