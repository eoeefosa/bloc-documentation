void main(List<String> args) {
  tick(ticks: 30).listen((event) {
    (duration) => print(duration);
  });
}

class _TimerTicked extends TimerEvent {
  const _TimerTicked({required this.duration});
  final int duration;
}

sealed class TimerEvent {
  const TimerEvent();
}

Stream<int> tick({required int ticks}) {
  return Stream.periodic(const Duration(milliseconds: 500), (y) => ticks - y)
      .take(ticks);
}
