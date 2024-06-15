import 'package:lesson4/model/book.dart';

class DatabaseController{
  static Future<List<Book>> getBooksFromDB() async{
    await Future.delayed(const Duration(seconds: 2));
    return booklist;
  }
}