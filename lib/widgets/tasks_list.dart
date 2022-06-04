import 'package:flutter/material.dart';
import 'package:to_do_list_app/widgets/task_title.dart';
import 'package:to_do_list_app/models/task.dart';

class TasksList extends StatefulWidget {
  @override
  State<TasksList> createState() => _TasksListState();
}

class _TasksListState extends State<TasksList> {
  List<Task> tasks = [
    Task(name: "Buy Milk"),
    Task(name: "Buy Bread"),
    Task(name: "Buy Eggs")
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: (context, index) {
        return TaskTitle(
          isChecked: tasks[index].isDone,
          taskTitle: tasks[index].name,
          checkboxCallBack: (checkboxState) {
            setState(() {
              tasks[index].toggleDone();
            });
          },
        );
      },
      itemCount: tasks.length,
    );
  }
}
