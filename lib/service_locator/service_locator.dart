import 'package:bloc_test/bloc/arithmetic_bloc.dart';
import 'package:bloc_test/bloc/counter_bloc.dart';
import 'package:bloc_test/cubit/area_of_circle_cubit.dart';
import 'package:bloc_test/cubit/arithmetic_cubit.dart';
import 'package:bloc_test/cubit/converter_cubit.dart';
import 'package:bloc_test/cubit/counter_cubit.dart';
import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/cubit/simple_interest_cubit.dart';
import 'package:bloc_test/cubit/student_cubit.dart';
import 'package:get_it/get_it.dart';

final serviceLocator = GetIt.instance;

Future<void> initDependency() async {
  _initBloc();
  _initCubit();
}

void _initBloc() {
  serviceLocator.registerLazySingleton(() => ArithmeticBloc());
  serviceLocator.registerLazySingleton(() => CounterBloc());
}

void _initCubit() {
  serviceLocator.registerLazySingleton<CounterCubit>(() => CounterCubit());
  serviceLocator
      .registerLazySingleton<ArithmeticCubit>(() => ArithmeticCubit());
  serviceLocator.registerLazySingleton<StudentCubit>(() => StudentCubit());
  serviceLocator
      .registerLazySingleton<SimpleInterestCubit>(() => SimpleInterestCubit());
  serviceLocator
      .registerLazySingleton<AreaOfCircleCubit>(() => AreaOfCircleCubit());
  serviceLocator.registerLazySingleton<ConverterCubit>(() => ConverterCubit());
  serviceLocator.registerLazySingleton<DashboardCubit>(
    () => DashboardCubit(
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
      serviceLocator(),
    ),
  );
}
