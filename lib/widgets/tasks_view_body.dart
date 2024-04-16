import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_state.dart';
import 'package:to_do_app/services/update_task.dart';
import 'package:to_do_app/widgets/task_item.dart';

class TasksViewBody extends StatelessWidget {
  const TasksViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<GetTasksCubit, GetTasksState>(
      builder: (context, state) {
        List<dynamic> tasks =
            BlocProvider.of<GetTasksCubit>(context).tasksList ?? [];
        //print(tasks);
        return ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return TaskItem(
              item: tasks[index],
              onChanged: (value) async {
                await UpdateTasks().updateCheckBox(
                  check: value!,
                  item: tasks[index],
                );
                BlocProvider.of<GetTasksCubit>(context).getTask();
              },
            );
          },
        );
      },
    );
  }
}
