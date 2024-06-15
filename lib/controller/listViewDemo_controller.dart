import 'package:lesson4/controller/database_controller.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';

class ListviewdemoController{
  ListViewState state;
  ListviewdemoController(this.state);

  Future<void> loadBookList() async{
    state.model.booklist = await DatabaseController.getBooksFromDB();
    state.callSetState((){});    
  }
}