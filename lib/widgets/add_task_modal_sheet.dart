import 'package:flutter/material.dart';
import 'package:to_do_app/widgets/custom_text_field.dart';

import 'custom_button.dart';

class AddTaskButtomSheet extends StatelessWidget {
  const AddTaskButtomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 32,
            ),
            CustomTextField(
              txt: 'Title',
            ),
            SizedBox(
              height: 10,
            ),
            CustomTextField(
              txt: 'Description',
              maxLines: 4,
            ),
            SizedBox(
              height: 25,
            ),
            CustomButton(
              txt: 'Add',
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
