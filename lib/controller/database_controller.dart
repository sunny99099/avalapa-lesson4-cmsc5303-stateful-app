import 'package:lesson4/model/book.dart';

class DatabaseController{
  static List<Book> getBooksFromDB(){
    return booklist;
  }
}