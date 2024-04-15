class GetTasksState {}

class GetTasksInitial extends GetTasksState {}

class GetTasksLoading extends GetTasksState {}

class GetTasksSuccess extends GetTasksState {
  final List<dynamic> tasks;
  GetTasksSuccess(this.tasks);
}

class GetTasksFailure extends GetTasksState {
  final String errorMessage;

  GetTasksFailure(this.errorMessage);
}
