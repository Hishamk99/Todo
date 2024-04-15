import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:to_do_app/cubits/get_tasks_cubit/get_tasks_state.dart';
import 'package:to_do_app/services/get_tasks.dart';

class GetTasksCubit extends Cubit<GetTasksState> {
  GetTasksCubit() : super(GetTasksInitial());
  getTasks() async {
    emit(GetTasksLoading());
    try {
      List<dynamic> tasksList = await GetTasks().getTasks();
      emit(GetTasksSuccess(tasksList));
    } catch (e) {
      emit(GetTasksFailure(e.toString()));
    }
  }
}
