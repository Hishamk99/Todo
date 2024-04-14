import 'package:flutter/material.dart';
import 'package:to_do_app/screens/edit_note_view.dart';

import 'screens/tasks_view.dart';

void main() {
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routes: {
        TasksView.id: (context) => const TasksView(),
        EditNoteView.id: (context) => const EditNoteView(),
      },
      initialRoute: TasksView.id,
    );
  }
}
