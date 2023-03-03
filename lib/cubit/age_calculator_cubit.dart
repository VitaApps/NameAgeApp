import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:name_age_app/domain/entities/name_age.dart';
import 'package:name_age_app/domain/repositories/age_repository.dart';

part 'age_calculator_state.dart';

class AgeCalculatorCubit extends Cubit<AgeCalculatorState> {
  final AgeRepository ageRepository;

  AgeCalculatorCubit({
    required this.ageRepository,
  }) : super(AgeCalculatorInitial());

  void calculateAge({required String name}) async {
    emit(LoadingState());

    await ageRepository.getAge(name: name).then((value) {
      emit(LoadedState(nameAge: value));
    }).catchError((error) {
      emit(ErrorState(message: error.toString()));
    });
  }
}
