import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/custom_button.dart';
import 'package:to_do_app/widgets/custom_text_field.dart';

class EditNoteView extends StatelessWidget {
  const EditNoteView({super.key});
  static String id = 'EditNoteView';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit Task'),
      ),
      body: const Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                txt: 'Title',
              ),
              SizedBox(
                height: 16,
              ),
              CustomTextField(
                txt: 'Description',
                maxLines: 4,
              ),
              SizedBox(
                height: 25,
              ),
              CustomButton(txt: 'Edit'),
            ],
          ),
        ),
      ),
    );
  }
}
