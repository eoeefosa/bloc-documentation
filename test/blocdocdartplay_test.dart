import 'package:bloc/bloc.dart';

void main(List<String> args) async {
  Stream<int> stream = countStream(10);
  int sum = await sumStream(stream);
  print(sum);
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
  CounterCubit() : super(0);
}
