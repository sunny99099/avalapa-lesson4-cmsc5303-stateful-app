import 'package:flutter/cupertino.dart';
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
      body: Padding(
        padding: const EdgeInsets.all(12.0),
        child: SingleChildScrollView(
          child: Form(
            key: fromkey,
            child: Column(
              children: [
                newRow(context),
                phoneRow(context),
                ageRow(context),
                const SizedBox(
                  height: 12,
                ),
                classificationDropDownButton(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Classification",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                majorRadioButtons(),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "Prog Language Proficiency",
                  style: Theme.of(context).textTheme.titleLarge,
                ),
                progLanguageCheckBoxes(),

              ],
            ),
          ),
        ),
      ),
    );
  }
  
  Widget progLanguageCheckBoxes(){
    return Column(
      children: [
        for(var v in ProgLanguage.values)
        CheckboxListTile(
          value: model.user.progLanguage![v], 
          title: Text(v.name),
          onChanged: (value) => con.onChangeLangeuage(value,v),
          ),
      ],
    );
  }

  Widget majorRadioButtons() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.blue[100],
          border: Border.all(
            color: Colors.blue[900]!,
            width: 2.0,
          )),
      child: Column(
        children: [
          for (var m in Major.values)
            RadioListTile<Major>(
              title: Text(m.name),
              value: m,
              groupValue: model.user.major,
              onChanged: con.onchangedMajor,
            )
        ],
      ),
    );
  }

  Container classificationDropDownButton() {
    return Container(
      decoration: BoxDecoration(
          color: Colors.green[100],
          border: Border.all(
            color: Colors.green[900]!,
          )),
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
    );
  }

  Row ageRow(BuildContext context) {
    return Row(
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
    );
  }

  Row phoneRow(BuildContext context) {
    return Row(
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
    );
  }

  Row newRow(BuildContext context) {
    return Row(
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
    );
  }
}
