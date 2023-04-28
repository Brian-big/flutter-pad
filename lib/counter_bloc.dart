import 'package:fluter_pad/counter_event.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<int> {
  CounterCubit() : super(0);

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }

  void increment() => emit(state + 1);

  void decrement() => emit(state - 1);
}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<Incrementevent>((event, emit) {
      emit(state + 1);
    });
    on<Decrementevent>((event, emit) {
      emit(state - 1);
    });
  }

  @override
  void onChange(Change<int> change) {
    super.onChange(change);
    print(change);
  }
}
