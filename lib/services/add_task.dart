import 'package:to_do_app/helper/api.dart';

class AddTask {
  Future<void> addTask({
    required String title,
    required String desc,
  }) async {
    //Map<String, dynamic> data =
    await Api().post(
      url: 'https://api.nstack.in/v1/todos',
      body: {
        'title': title,
        'description': desc,
        "is_completed": 'false',
      },
    );
    //print(data);
  }
}
