import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/helper/api.dart';
import 'package:to_do_app/screens/edit_note_view.dart';
import 'cubits/add_task_cubit/add_tasks_cubit.dart';
import 'screens/tasks_view.dart';

void main() async {
  var data = await Api().post(body: {
    'title': 'title',
    'description': 'desc',
    "is_completed": 'false',
  }, url: 'https://api.nstack.in/v1/todos');
  log(data.toString());
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(create: (context) => AddTasksCubit()),
      ],
      child: MaterialApp(
        theme: ThemeData.dark(),
        debugShowCheckedModeBanner: false,
        routes: {
          TasksView.id: (context) => const TasksView(),
          EditNoteView.id: (context) => const EditNoteView(),
        },
        initialRoute: TasksView.id,
      ),
    );
  }
}
