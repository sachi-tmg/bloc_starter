import 'package:bloc_test/cubit/dashboard_cubit.dart';
import 'package:bloc_test/service_locator/service_locator.dart';
import 'package:bloc_test/view/dashboard_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    // return MultiBlocProvider(
    //   providers: [
    //     BlocProvider<CounterCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //     BlocProvider<ArithmeticCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //     BlocProvider<StudentCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //     BlocProvider<SimpleInterestCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //     BlocProvider<AreaOfCircleCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //     BlocProvider<ConverterCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //     BlocProvider<DashboardCubit>(
    //       create: (context) => serviceLocator(),
    //     ),
    //   ],
    // );
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Bloc',
      home: BlocProvider.value(
        value: serviceLocator<DashboardCubit>(),
        child: DashboardView(),
      ),
    );
  }
}
