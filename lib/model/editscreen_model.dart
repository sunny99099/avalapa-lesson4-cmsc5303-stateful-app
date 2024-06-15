import 'package:lesson4/model/user_record.dart';
import 'package:lesson4/view/edit_screen.dart';

class EditscreenModel{
  late final UserRecord user;
  final UserRecord origUser;
  EditscreenModel(this.origUser){
    user = origUser.clone();
  }
}