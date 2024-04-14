import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/add_task_form.dart';

class AddTaskButtomSheet extends StatelessWidget {
  const AddTaskButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: AddTaskForm(),
      ),
    );
  }
}
