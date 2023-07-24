import 'package:bloc/bloc.dart';

void main(List<String> args) {}

class Databloc extends Bloc<Loadevent, LoadState> {
  Databloc() : super(Initialize()) {
    on<Updateevent>((event, emit) => emit(Update([])));
  }
}

sealed class Loadevent {}

final class Updateevent extends Loadevent {}

Stream<int> tick({required int ticks}) {
  return Stream.periodic(const Duration(milliseconds: 500), (y) => ticks - y)
      .take(ticks);
}

sealed class LoadState {
  final List mylist;

  LoadState(this.mylist);
}

final class Initialize extends LoadState {
  Initialize() : super([]);
}

final class Update extends LoadState {
  final List newdata;
  Update(this.newdata) : super(newdata);
}
