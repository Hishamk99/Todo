import 'package:flutter/material.dart';
import 'package:to_do_app/screens/edit_note_view.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 150,
      padding: const EdgeInsets.all(8),
      margin: const EdgeInsets.all(8),
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(.07),
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'String 1',
              style: TextStyle(fontSize: 20),
            ),
            const SizedBox(
              height: 10,
            ),
            const Expanded(
              child: Text(
                'String 2',
              ),
            ),
            Row(
              children: [
                const Text('april 19 , 2024'),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(context, EditNoteView.id);
                  },
                  icon: const Icon(Icons.edit),
                ),
                IconButton(
                  onPressed: () {},
                  icon: const Icon(
                    Icons.delete,
                    color: Colors.red,
                  ),
                ),
                Checkbox(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
