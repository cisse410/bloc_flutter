
import 'package:bloc/bloc.dart';

part 'counter_event.dart';
class CounterBloc extends Bloc<CounterBlocEvent, int> {
  CounterBloc() : super(0) {
    on<IncrementEvent>((event, emit) {
      emit(state + 1);
    });

    on<DecrementEvent>((event, emit) {
      if (state == 0) {
        print('Something went wrong');
        return;
      }
      emit(state - 1);
    });
  }
}
