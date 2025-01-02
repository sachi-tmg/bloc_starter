import 'package:bloc/bloc.dart';
import 'package:bloc_test/model/student_model.dart';
import 'package:equatable/equatable.dart';

part 'student_event.dart';
part 'student_state.dart';

class StudentBloc extends Bloc<StudentEvent, StudentState> {
  StudentBloc() : super(StudentState.initial()) {
    on<AddStudentEvent>(_onAddStudentEvent);
    on<DeleteStudentEvent>(_onDeleteStudentEvent);
  }

  Future<void> _onAddStudentEvent(
    AddStudentEvent event,
    Emitter<StudentState> emit,
  ) async {
    // Show loading bar
    emit(state.copyWith(isLoading: true));
    //wait for 1 scond
    await Future.delayed(const Duration(seconds: 1));
    final students = List<StudentModel>.from(state.students)
      ..add(event.studentModel);
    emit(state.copyWith(students: students, isLoading: false));
  }

  Future<void> _onDeleteStudentEvent(
    DeleteStudentEvent event,
    Emitter<StudentState> emit,
  ) async {
    // Show loading bar
    emit(state.copyWith(isLoading: true));
    //wait for 1 scond
    await Future.delayed(const Duration(seconds: 1));
    final students = List<StudentModel>.from(state.students)
      ..removeAt(event.index);
    emit(state.copyWith(
      students: students,
      isLoading: false,
    ));
  }
}
