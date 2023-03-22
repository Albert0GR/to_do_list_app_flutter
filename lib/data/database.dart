import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];
  //reference our box
  final _myBox = Hive.box('myBox');

  //ruun this method if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ["Lavar los trastes", false],
      ["Correr", false],
    ];
  }

  //load de data from database

  void loadDatata() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update data base
  void updateDataBase() {
    _myBox.put("TODOLIST", toDoList);
  }
}
