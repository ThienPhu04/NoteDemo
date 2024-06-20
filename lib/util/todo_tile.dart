import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';

class TodoTile extends StatelessWidget {
  final String taskName;
  final bool taskCompleted;
  Function(bool?)? onChanged;
  Function(BuildContext)? deleteFunction;


  TodoTile({
    super.key,
    required this.taskName,
    required this.taskCompleted,
    required this.onChanged,
    required this.deleteFunction,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 25.0,right: 25.0,top: 25.0),
      child: Slidable(
        endActionPane: ActionPane(
          motion: StretchMotion(),
          children: [
            SlidableAction(
                onPressed: deleteFunction,
                borderRadius: BorderRadius.circular(12),
                icon: Icons.delete,
                backgroundColor: Colors.red.shade300,)
          ],
        ),
        child: Container(
          decoration: BoxDecoration(
            color: Colors.yellow,
            borderRadius: BorderRadius.circular(12), // Corrected the semicolon to a comma
          ),
          child: Row(
            children: [
              // Checkbox
              Checkbox(
                value: taskCompleted, // Updated to use taskCompleted
                onChanged: onChanged,
                activeColor: Colors.black,
              ),
              // Task name
              Text(
                taskName,
                style: TextStyle(
                    decoration:taskCompleted
                        ? TextDecoration.lineThrough
                        : TextDecoration.none),
        
              ), // Updated to use taskName
            ],
          ),
        ),
      ),
    );
  }
}
