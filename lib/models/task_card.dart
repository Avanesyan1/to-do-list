// ignore_for_file: camel_case_types, must_be_immutable

import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class taskCard extends StatelessWidget {
  
  final String taskName;
  final bool taskCompleted;
  Function(bool?)?onChanged;
  Function(BuildContext)? deleteFunction;
  Function(BuildContext)? renameFunction;

  taskCard({super.key, 
            required this.taskName, 
            required this.taskCompleted,
            required this.onChanged,    
            required this.deleteFunction,
            required this.renameFunction
        });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(25),
      child: Slidable(
        endActionPane: ActionPane(
        motion: const StretchMotion(),
          children: [
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              onPressed: renameFunction,
              icon: Icons.create_sharp,
              backgroundColor: Colors.yellow,
            ),
            SlidableAction(
              borderRadius: BorderRadius.circular(12),
              onPressed: deleteFunction,
              icon: Icons.delete,
              backgroundColor: Colors.red,
            )
          ],
        ) ,
        child:ConstrainedBox(
                  constraints:const BoxConstraints(
                                            minHeight: 10,
                                            maxHeight: 200,
                                    ),
                  child:Container(
                  padding: const EdgeInsets.all(24),
          decoration: BoxDecoration(
                            color: Colors.purple[900],
                            borderRadius: BorderRadius.circular(12),
                      ),
                  child: Row(
                    children: [
                      Checkbox(value: taskCompleted, onChanged: onChanged),
                      Expanded( 
                        child: Text(
                          taskName,
                          maxLines: 4,
                          style: TextStyle(
                            fontFamily: 'PoetsenOne',
                            fontSize: 22,
                            color: Colors.white,
                            decoration: taskCompleted == true ? TextDecoration.lineThrough:TextDecoration.none,
                          ),
                        ),
                      )
                    ],
                          ),
)
       )
    ));
  }
}