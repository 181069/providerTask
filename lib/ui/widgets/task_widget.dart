import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todo_db/models/task_model.dart';
import 'package:todo_db/providers/todo_provider.dart';

class TaskWidget extends StatelessWidget {
  TaskModel taskModel;

  TaskWidget(this.taskModel);
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    Consumer<TodoProvider>( builder:(context,todoProvider,x){
      return Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: taskModel.isComplete ? Colors.green : Colors.redAccent),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        child: Row(
          children: [
            Checkbox(
                value: taskModel.isComplete,
                onChanged: (v) {
                  taskModel.isComplete = v;
                  todoProvider
                      .updateTask(taskModel);
                }),
            SizedBox(
              width: 10,
            ),
            Column(
              children: [
                Text(taskModel.taskName),
                Text('${taskModel.dueTime}'),
                Text('${taskModel.dueDate}'),
              ],
            ),
            Spacer(),
            IconButton(
                onPressed: () {
                  todoProvider
                      .deleteTask(taskModel);
                },
                icon: Icon(Icons.delete))
          ],
        ),
      );
    });
  }
}
