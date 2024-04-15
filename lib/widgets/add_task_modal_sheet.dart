import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/add_task_cubit/add_task_state.dart';
import 'package:to_do_app/cubits/add_task_cubit/add_tasks_cubit.dart';
import 'package:to_do_app/widgets/add_task_form.dart';

class AddTaskButtomSheet extends StatelessWidget {
  const AddTaskButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddTasksCubit(),
      child: BlocConsumer<AddTasksCubit, TaskState>(
        listener: (context, state) {
          if (state is TasksFailure) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.red,
                content: Text('Failed'),
              ),
            );
          }
          if (state is TasksSuccess) {
            ScaffoldMessenger.of(context).showSnackBar(
              const SnackBar(
                backgroundColor: Colors.green,
                content: Text('Success'),
              ),
            );
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return AbsorbPointer(
            absorbing: state is TasksLoading ? true : false,
            child: Padding(
              padding: EdgeInsets.only(
                left: 16,
                right: 16,
                bottom: MediaQuery.of(context).viewInsets.bottom,
              ),
              child: const SingleChildScrollView(
                child: AddTaskForm(),
              ),
            ),
          );
        },
      ),
    );
  }
}
