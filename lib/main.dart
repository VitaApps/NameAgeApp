import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:name_age_app/cubit/age_calculator_cubit.dart';
import 'package:name_age_app/domain/repositories/age_repository.dart';
import 'package:name_age_app/domain/repositories/age_repository_impl.dart';
import 'package:name_age_app/pages/pages.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Name Age App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: _provideRepository(
        child: _provideApp(
          child: StartPage(),
        ),
      ),
    );
  }

  Widget _provideRepository({required Widget child}) => RepositoryProvider<AgeRepository>(
        create: (context) => const AgeRepositoryImpl(),
        child: child,
      );

  Widget _provideApp({required Widget child}) => MultiBlocProvider(
        providers: [
          BlocProvider<AgeCalculatorCubit>(
            create: (context) => AgeCalculatorCubit(
              ageRepository: context.read<AgeRepository>(),
            ),
          ),
        ],
        child: child,
      );
}
