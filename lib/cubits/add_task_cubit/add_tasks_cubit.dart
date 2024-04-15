import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/add_task_cubit/add_task_state.dart';
import 'package:to_do_app/services/add_task.dart';

class AddTasksCubit extends Cubit<TaskState> {
  AddTasksCubit() : super(TaskInitial());

  addTask({required String title, required String desc}) async {
    emit(TasksLoading());
    try {
      await AddTask().addTask(title: title, desc: desc);
      emit(TasksSuccess());
    } catch (e) {
      TasksFailure(e.toString());
    }
  }
}
