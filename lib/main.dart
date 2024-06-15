import 'package:flutter/material.dart';
import 'package:lesson4/model/book.dart';
import 'package:lesson4/model/user_record.dart';
import 'package:lesson4/view/bookdetailview__screen.dart';
import 'package:lesson4/view/countdemo_Screen.dart';
import 'package:lesson4/view/edit_screen.dart';
import 'package:lesson4/view/listViewDemo_Screen.dart';
import 'package:lesson4/view/start_screen.dart';
import 'package:lesson4/view/userHome_Screen.dart';

void main() {
  runApp(const Lesson4App());
}

class Lesson4App extends StatelessWidget {
  const Lesson4App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        useMaterial3: true,
        colorSchemeSeed: Colors.teal,
      ),
      initialRoute: StartScreen.rountName,
      routes: {
        StartScreen.rountName: (context) => const StartScreen(),
        CountDemoScreen.routeName: (context) => const CountDemoScreen(),
        ListviewdemoScreen.routeName: (context) => const ListviewdemoScreen(),
        BookDetailViewScreen.routeName: (context) {
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if(args != null && args is Book){
            return BookDetailViewScreen(args);
          }
          else{
            return const Text("Argument is null or not a book: Book details");
          }
        },
        UserHomeScreen.routeName: (context){
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if(args != null && args is UserRecord){
            return UserHomeScreen(args);
          }
          else{
            return const Text("Argument is null or not a book: User Home");
          } 
        },
        EditScreen.routeName: (context){
          Object? args = ModalRoute.of(context)?.settings.arguments;
          if(args != null && args is UserRecord){
            return EditScreen(args);
          }
          else{
            return const Text("Argument is null or not a book: Edit Screen error");
          } 
        },
      },
    );
  }
}
