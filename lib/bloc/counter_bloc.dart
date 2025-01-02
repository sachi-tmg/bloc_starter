import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'counter_event.dart';

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      final result = state + 1;
      emit(result);
    });
    on<DecrementEvent>((event, emit) {
      final result = state - 1;
      emit(result);
    });
    on<ResetEvent>((event, emit) {
      emit(0);
    });
  }
}
