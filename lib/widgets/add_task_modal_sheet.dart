import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:to_do_app/cubits/add_task_cubit/add_task_state.dart';
import 'package:to_do_app/cubits/add_task_cubit/add_tasks_cubit.dart';
import 'package:to_do_app/widgets/add_task_form.dart';

class AddTaskButtomSheet extends StatelessWidget {
  const AddTaskButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: BlocConsumer<AddTasksCubit, TaskState>(
        listener: (context, state) {
          if (state is TasksFailure) {
            log('Failed ${state.errorMessage}');
          }
          if (state is TasksSuccess) {
            Navigator.pop(context);
          }
        },
        builder: (context, state) {
          return ModalProgressHUD(
            inAsyncCall: state is TasksLoading ? true : false,
            child: const SingleChildScrollView(
              child: AddTaskForm(),
            ),
          );
        },
      ),
    );
  }
}
