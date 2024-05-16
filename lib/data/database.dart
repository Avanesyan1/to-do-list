import 'package:hive_flutter/hive_flutter.dart';

class TaskBase {
  final _myBox = Hive.box('Mybox');
  List taskList = [['Your task',false]];

  Future<void> createInitialData() async {
    _myBox.put('TASKLIST', taskList);
  }

  Future<void> loadData() async {
    taskList = _myBox.get('TASKLIST');
  }

  Future<void> updateDataBase() async{
    _myBox.put('TASKLIST',taskList);
  }
}
    