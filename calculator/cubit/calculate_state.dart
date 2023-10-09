part of 'calculate_cubit.dart';

@immutable
class CalculateState {
  String equation;

  CalculateState({required this.equation});

  CalculateState copyWith();
}

final class CalculateInitial extends CalculateState {}
