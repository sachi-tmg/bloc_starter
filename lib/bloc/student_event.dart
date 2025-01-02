part of 'student_bloc.dart';

sealed class StudentEvent extends Equatable {
  const StudentEvent();

  @override
  List<Object> get props => [];
}

class AddStudentEvent extends StudentEvent {
  final StudentModel studentModel;

  const AddStudentEvent(this.studentModel);
}

class DeleteStudentEvent extends StudentEvent {
  final int index;

  const DeleteStudentEvent(this.index);
}
