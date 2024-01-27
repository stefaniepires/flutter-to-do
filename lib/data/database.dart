import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {
  List toDoList = [];
  //reference box

  final _myBox = Hive.box('myBox');

//run method if first time opening app ever
  void createInitialData() {
    toDoList = [
      ['Start Creating Tasks', false],
      ['Try Deleting a Task', false],
    ];
  }

  //load data from db
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

  //update db

  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
