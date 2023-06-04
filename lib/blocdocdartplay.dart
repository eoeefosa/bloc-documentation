import 'package:bloc/bloc.dart';

void main(List<String> args) {
  CounterCubit()
    ..increment()
    ..close();
}

Stream<int> countStream(int max) async* {
  for (int i = 0; i < max; i++) {
    yield i;
  }
}

Future<int> sumStream(Stream<int> stream) async {
  int sum = 0;
  await for (int value in stream) {
    sum += value;
  }
  return sum;
}

class CounterCubit extends Cubit<int> {
  // CounterCubit(int initialstate) : super(initialstate);
  CounterCubit() : super(0);
  void increment() => emit(state + 1);

  @override
  void onChange(Change<int> change) {
    // TODO: implement onChange
    super.onChange(change);
    print(change);
  }
}
