import 'package:to_do_app/helper/api.dart';

class DeleteTasks {
  Future<void> deleteTasks({required String id}) async {
    await Api().delete(
      url: 'https://api.nstack.in/v1/todos/$id',
    );
  }
}
