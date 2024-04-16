import 'package:to_do_app/helper/api.dart';

class UpdateTasks {
  Future<void> updateCheckBox(
      {required bool check, required Map<String, dynamic> item}) async {
    await Api().put(
      url: 'https://api.nstack.in/v1/todos/${item['_id']}',
      body: {
        "title": item['title'],
        "description": item['description'],
        'is_completed': check.toString(),
      },
    );
  }

  Future<void> updateTask(
      {required String title,
      required String desc,
      required Map<String, dynamic> item}) async {
    await Api().put(
      url: 'https://api.nstack.in/v1/todos/${item['_id']}',
      body: {
        "title": title,
        "description": desc,
        'is_completed': item['is_completed'].toString(),
      },
    );
  }
}
