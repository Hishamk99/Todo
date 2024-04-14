import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/task_item.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return const TaskItem();
      },
    );
  }
}
