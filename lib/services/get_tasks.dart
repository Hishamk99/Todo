import 'package:to_do_app/helper/api.dart';

class GetTasks {
  Future<List<dynamic>> getTasks() async {
    Map<String, dynamic> data = await Api().get(
      url: 'https://api.nstack.in/v1/todos',
    );
    List<dynamic> tasks = data['items'];

    return tasks;
  }
}
