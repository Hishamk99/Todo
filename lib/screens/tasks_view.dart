import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:to_do_app/widgets/add_task_modal_sheet.dart';
import 'package:to_do_app/widgets/tasks_view_body.dart';

class TasksView extends StatefulWidget {
  const TasksView({super.key});
  static String id = 'TasksView';

  @override
  State<TasksView> createState() => _TasksViewState();
}

class _TasksViewState extends State<TasksView> {
  @override
  void initState() {
    super.initState();
    BlocProvider.of<GetTasksCubit>(context).getTask();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: const Color(0xffC65E52),
        onPressed: () {
          showModalBottomSheet(
            context: context,
            isScrollControlled: true,
            builder: (context) {
              return const AddTaskButtomSheet();
            },
          );
        },
        child: const Icon(
          Icons.add,
        ),
      ),
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
