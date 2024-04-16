import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:to_do_app/services/delete_task.dart';

class DeleteIcon extends StatelessWidget {
  const DeleteIcon({
    super.key,
    required this.item,
  });

  final Map<String, dynamic> item;

  @override
  Widget build(BuildContext context) {
    return IconButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              icon: const Icon(Icons.warning),
              title: const Text(
                'Alert',
              ),
              content: const Text(
                'Are you sure',
              ),
              actions: [
                TextButton(
                  onPressed: () {
                    DeleteTasks().deleteTasks(id: item['_id']);
                    BlocProvider.of<GetTasksCubit>(context).getTask();
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'Yes',
                  ),
                ),
                TextButton(
                  onPressed: () {
                    Navigator.pop(context);
                  },
                  child: const Text(
                    'No',
                  ),
                ),
              ],
            );
          },
        );
      },
      icon: const Icon(
        Icons.delete,
        color: Colors.red,
      ),
    );
  }
}
