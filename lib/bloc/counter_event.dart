part of 'counter_bloc.dart';

sealed class CounterBlocEvent {}

final class IncrementEvent extends CounterBlocEvent {}

final class DecrementEvent extends CounterBlocEvent {}
