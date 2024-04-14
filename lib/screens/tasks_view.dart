import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/tasks_view_body.dart';

class TasksView extends StatelessWidget {
  const TasksView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: const Column(
          children: [
            Text(
              'Welcome back!',
              style: TextStyle(fontSize: 16),
            ),
            Text('Hisham Kamel'),
          ],
        ),
      ),
      body: const TasksViewBody(),
    );
  }
}
