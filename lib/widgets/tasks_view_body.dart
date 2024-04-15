import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_state.dart';
import 'package:to_do_app/widgets/task_item.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTasksCubit, GetTasksState>(
      builder: (context, state) {
        return ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return const TaskItem();
          },
        );
      },
    );
  }
}
