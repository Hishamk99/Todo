import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:to_do_app/screens/edit_note_view.dart';
import 'screens/tasks_view.dart';

void main() {
  // var data = await Api().post(body: {
  //   'title': 'title',
  //   'description': 'desc',
  //   "is_completed": 'false',
  // }, url: 'https://api.nstack.in/v1/todos');
  // log(data.toString());
  runApp(const ToDoApp());
}

class ToDoApp extends StatelessWidget {
  const ToDoApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => GetTasksCubit(),
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
