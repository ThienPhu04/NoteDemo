import 'package:hive_flutter/hive_flutter.dart';

class ToDoDataBase{
  List toDoList =[];
//   reference our box
    final _myBox = Hive.box('mybox');

//     run this method if this the 1st time over  opening this app

  void createInitData(){
    toDoList = [
      ["Make tutorial", false],
      ["Do exercise", false]
    ];
  }
  void loadData(){
    toDoList = _myBox.get("TODOLIST");

  }
  void updateDatabase(){
    _myBox.put("TODOLIST", toDoList);
  }
}