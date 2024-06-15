import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:lesson4/controller/edit_controller.dart';
import 'package:lesson4/model/editscreen_model.dart';
import 'package:lesson4/model/user_record.dart';

class EditScreen extends StatefulWidget {
  const EditScreen(this.user, {super.key});
  final UserRecord user;

  static const routeName = "/EditScreen";

  @override
  State<StatefulWidget> createState() {
    return EditState();
  }
}

class EditState extends State<EditScreen> {
  late EditscreenModel model;
  late EditController con;

  final fromkey = GlobalKey<FormState>();
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    model = EditscreenModel(widget.user);
    con = EditController(this);
  }

  void callSetState(fn) => setState(fn);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Edit: ${widget.user.name}"),
        actions: [
          IconButton(
            onPressed: con.save,
            icon: Icon(Icons.check),
          ),
        ],
      ),
      body: Form(
        key: fromkey,
        child: Column(
          children: [
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Name",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
                Expanded(
                  child: TextFormField(
                    initialValue: model.user.name,
                    validator: con.ValidateName,
                    onSaved: con.saveName,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "phone",
                  style: Theme.of(context).textTheme.titleMedium,
                )),
                Expanded(
                  child: TextFormField(
                    initialValue: model.user.phone,
                    validator: con.Validatephone,
                    onSaved: con.savePhone,
                  ),
                ),
              ],
            ),
            Row(
              children: [
                Expanded(
                    child: Text(
                  "Age",
                  style: Theme.of(context).textTheme.titleLarge,
                )),
                Expanded(
                  child: TextFormField(
                    initialValue: "${model.user.age}",
                    validator: con.Validateage,
                    onSaved: con.saveAge,
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 12,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.green[100],
                border: Border.all(
                  color: Colors.green[900]!,
                )
              ),
              child: DropdownButton(
                value: model.user.classification,
                items: [
                  for (var c in Classification.values)
                    DropdownMenuItem(
                      value: c,
                      child: Text(c.name),
                    ),
                ],
                onChanged: con.onChangedClassification,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
