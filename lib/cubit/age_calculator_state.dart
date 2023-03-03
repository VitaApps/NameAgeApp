part of 'age_calculator_cubit.dart';

@immutable
abstract class AgeCalculatorState {}

class AgeCalculatorInitial extends AgeCalculatorState {}

class LoadingState extends AgeCalculatorState {}

class LoadedState extends AgeCalculatorState {
  final NameAge nameAge;

  LoadedState({required this.nameAge});
}

class ErrorState extends AgeCalculatorState {
  final String message;

  ErrorState({required this.message});
}
