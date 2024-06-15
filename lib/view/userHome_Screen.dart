import 'package:flutter/material.dart';
import 'package:lesson4/controller/userHOme_controller.dart';
import 'package:lesson4/model/user_record.dart';

class UserHomeScreen extends StatefulWidget {
  const UserHomeScreen(this.user, {super.key});

  final UserRecord user;

  static const routeName = "/UserHomeScreen";

  @override
  State<StatefulWidget> createState() {
    return UserHomeState();
  }
}

class UserHomeState extends State<UserHomeScreen> {
  late UserhomeController con;
  
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    con = UserhomeController(this);

  }

  void callSetState(fn) => setState(fn);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Home of ${widget.user.name}"),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Color.fromARGB(255, 185, 241, 201),
          padding: const EdgeInsets.fromLTRB(24, 30, 10, 0),
          width: MediaQuery.of(context).size.width,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                "email: ${widget.user.email}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "phone: ${widget.user.phone}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "age: ${widget.user.age}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "Classification: ${widget.user.classification.name}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              Text(
                "major: ${widget.user.major.name}",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              const SizedBox(
                height: 16,
              ),
              Text(
                "Programing Language Proficency",
                style: Theme.of(context).textTheme.bodyLarge,
              ),
              for (var lang in ProgLanguage.values)
                Row(
                  children: [
                    Switch(
                      value: widget.user.progLanguage![lang] ?? false,
                      onChanged: null,
                    ),
                    if(lang == ProgLanguage.cpp)
                      const Text("C++")
                    else if(lang == ProgLanguage.csharp)
                      const Text("C#")
                    else Text(lang.name),
                  ],
                  
                ),
            ],
          ),
        ),
      ),
    );
  }
}
