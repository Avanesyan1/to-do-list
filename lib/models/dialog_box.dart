import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DialogBox extends StatelessWidget {
 
  final dynamic controller;
  VoidCallback onSave;
  VoidCallback onCancel;

  DialogBox({
    super.key, 
    required this.controller,
    required this.onSave,
    required this.onCancel});

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Colors.purple[900],
      content: SizedBox(
        height: 150,
        child:  Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextField(
              maxLines: 2,
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: const InputDecoration(
                border: OutlineInputBorder(),
                hintText: 'Add a new task',hintStyle: TextStyle(color: Colors.white,fontFamily: 'PoetsenOne'),
              ),
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextButton(
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(Colors.black)),
                      onPressed: onSave, 
                      child: const Text('Save',style: TextStyle(color: Colors.white,fontSize: 18,fontFamily:'PoetsenOne'))),
                  const SizedBox(width: 10,),
                  TextButton(
                    style: ButtonStyle(
                    backgroundColor: MaterialStateProperty.all(Colors.black)),
                    onPressed: onCancel, 
                    child: const Text('Cancel',style: TextStyle(color: Colors.white,fontSize: 18,fontFamily:'PoetsenOne')))
                ],
              ),
          ],),
      ),
    );
  }
}