import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase {
  List toDoList = [];

//Reference our box
  final _myBox = Hive.box('myBox');

  //Run this method  if this is the 1st time ever opening this app
  void createInitialData() {
    toDoList = [
      ['Create new APP', false],
      ['Do workout', false],
    ];
  }

//Load data from DB
  void loadData() {
    toDoList = _myBox.get("TODOLIST");
  }

//Update the DB
  void updateData() {
    _myBox.put("TODOLIST", toDoList);
  }
}
