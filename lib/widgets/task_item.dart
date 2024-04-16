import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:to_do_app/screens/edit_note_view.dart';
import 'package:to_do_app/widgets/delete_icon.dart';

class TaskItem extends StatelessWidget {
  const TaskItem({
    super.key,
    required this.item,
    required this.onChanged,
  });
  final Map<String, dynamic> item;
  final void Function(bool?)? onChanged;
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
            Text(
              item['title'],
              style: TextStyle(
                fontSize: 20,
                decoration: item['is_completed']
                    ? TextDecoration.lineThrough
                    : TextDecoration.none,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Expanded(
              child: Text(
                item['description'],
              ),
            ),
            Row(
              children: [
                Text(
                  DateFormat.yMd().format(
                    DateTime.now(),
                  ),
                ),
                const Spacer(),
                IconButton(
                  onPressed: () {
                    Navigator.pushNamed(
                      context,
                      EditNoteView.id,
                      arguments: item,
                    );
                  },
                  icon: const Icon(Icons.edit),
                ),
                DeleteIcon(item: item),
                Checkbox(
                  value: item['is_completed'],
                  onChanged: onChanged,
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
