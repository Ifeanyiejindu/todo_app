import 'package:hive_flutter/hive_flutter.dart';

class ToDoDatabase {

  List toDoList = [];

  //referencing hive box
  final _myBox = Hive.box('mybox');

  // run this method if this is the 1st time ever opening this app
  void createInitData(){
    toDoList = [
      ['Make Tutorial', false,],
      ['Do Exercise', false],
    ];
  }

  void loadData(){
    toDoList = _myBox.get('TODOLIST');
  }

  void updateDataBase(){
    _myBox.put('TODOLIST', toDoList);

  }

}