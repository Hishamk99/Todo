import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_cubit.dart';
import 'package:to_do_app/services/update_task.dart';
import 'package:to_do_app/widgets/custom_button.dart';
import 'package:to_do_app/widgets/custom_text_field.dart';

class EditNoteView extends StatefulWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';

  @override
  State<EditNoteView> createState() => _EditNoteViewState();
}

class _EditNoteViewState extends State<EditNoteView> {
  String? title, desc;
  @override
  Widget build(BuildContext context) {
    var data =
        ModalRoute.of(context)!.settings.arguments as Map<String, dynamic>;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onChanged: (value) {
                  title = value;
                },
                txt: 'Title',
              ),
              const SizedBox(
                height: 16,
              ),
              CustomTextField(
                onChanged: (value) {
                  desc = value;
                },
                txt: 'Description',
                maxLines: 4,
              ),
              const SizedBox(
                height: 25,
              ),
              CustomButton(
                txt: 'Edit',
                onTap: () {
                  UpdateTasks().updateTask(
                      title: title = title ?? data['title'],
                      desc: desc = desc ?? data['description'],
                      item: data);
                  BlocProvider.of<GetTasksCubit>(context).getTask();
                  Navigator.pop(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
