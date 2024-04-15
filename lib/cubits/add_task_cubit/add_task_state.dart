class TaskState {}

class TaskInitial extends TaskState {}

class TasksLoading extends TaskState {}

class TasksSuccess extends TaskState {}

class TasksFailure extends TaskState {
  final String errorMessage;

  TasksFailure(this.errorMessage);
}
