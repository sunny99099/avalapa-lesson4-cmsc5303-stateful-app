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

  void onTap(int index) {
    if(state.model.selected.isEmpty){
      Book book = state.model.booklist![index];
      Navigator.pushNamed(
        state.context,
        BookDetailViewScreen.routeName,
        arguments: book,
      );
    }
    else{
      onLongPress(index);
    }
    
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
    state.model.selected.sort();
    for(int i = state.model.selected.length - 1; i >= 0; i--){
      state.model.booklist?.removeAt(state.model.selected[i]);
    }
    state.callSetState((){
      state.model.selected.clear();
    });
  }
}