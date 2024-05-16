// ignore_for_file: camel_case_types
import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:to_do_list/data/database.dart';
import 'package:to_do_list/models/dialog_box.dart';
import 'package:to_do_list/models/task_card.dart';

class task_listPage extends StatefulWidget {
  const task_listPage({super.key});

  @override
  State<task_listPage> createState() => _task_listPageState();
}

class _task_listPageState extends State<task_listPage> {
  final _myBox = Hive.box('MyBox');
  final TaskBase db = TaskBase();
  final _controller = TextEditingController();

  @override
  void initState() {
  if (_myBox.get('TASKLIST') == null) {
    db.createInitialData(); 
  }else {
    db.loadData();
  } 
  super.initState();
}
  void renameTask(index){
    setState(() {
      _controller.text = db.taskList[index][0];
      RenameTask(index);
    });
  }
  void saveRenameTask(index){
    setState(() {
        if(_controller.text != '  '){
        db.taskList[index][0] = _controller.text;}
        _controller.clear();
         Navigator.pop(context);

    });
  }
  void RenameTask(index){
    showDialog(
      context: context,
      builder: (context){
        return DialogBox(
          controller: _controller,
          onCancel: () => Navigator.pop(context),
          onSave:() => saveRenameTask(index)
        );
      });
   }

  void checkBoxChanged(bool? value, int index){
    setState(() {
      db.taskList[index][1] =  !db.taskList[index][1];
     }
    );
    db.updateDataBase();
  }

  void deleteTask(int index){
    setState(() {
      db.taskList.removeAt(index);
    });
    db.updateDataBase();
  }

  void saveNewTask(){
    setState(() {
        if(_controller.text != ''){
        db.taskList.add([_controller.text,false]);}
        _controller.clear();
        Navigator.pop(context);
    });
  }


  void createNewTask(){
    showDialog(
      context: context,
      builder: (context){
        return DialogBox(
          controller: _controller,
          onCancel: () => Navigator.pop(context),
          onSave: saveNewTask
        );
      });
   }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        centerTitle: true,
        automaticallyImplyLeading: false,
        backgroundColor: Colors.purple[900],
        title: const Text('To Do List', style: TextStyle(color: Colors.white,fontSize: 40,fontWeight: FontWeight.bold,fontFamily: 'PoetsenOne'),)
        ),
      floatingActionButton: FloatingActionButton(
                                            backgroundColor: Colors.white,
                                            onPressed: createNewTask,
                                            child: const Icon(Icons.add),),
      body: ListView.builder(
        itemCount: db.taskList.length,
        itemBuilder:(context, index){
          return taskCard(taskName: db.taskList[index][0],
                          taskCompleted: db.taskList[index][1],
                          onChanged: (value) => checkBoxChanged(value, index),
                          deleteFunction: (context) => deleteTask(index),
                          renameFunction: (context) => renameTask(index),
      );}
    ),
    ); 
  }
}