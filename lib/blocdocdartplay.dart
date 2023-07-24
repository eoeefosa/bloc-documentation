import 'package:bloc/bloc.dart';

Future<void> main(List<String> args) async {
  final bloc = CounterBloc();
  final subscription = bloc.stream.listen(print);
  // print(bloc.state);
  bloc.add(CounterIncrementPressed());
  await Future.delayed(Duration.zero);
  await subscription.cancel();
  // print(bloc.state);
  await bloc.close();
}

class SimpleBlocObserver extends BlocObserver {
  @override
  void onChange(BlocBase bloc, Change change) {
    super.onChange(bloc, change);
    print('${bloc.runtimeType} $change');
  }

  @override
  void onError(BlocBase bloc, Object error, StackTrace stackTrace) {
    // print('${bloc.runtimeType} $error $stackTrace');
    super.onError(bloc, error, stackTrace);
  }
}

sealed class CounterEvent {}

final class CounterIncrementPressed extends CounterEvent {}

class CounterBloc extends Bloc<CounterEvent, int> {
  CounterBloc() : super(0) {
    on<CounterIncrementPressed>((event, emit) {
      // handle incoming `CounterIncrementPressed` event
      emit(state + 1);
    });
  }
}
