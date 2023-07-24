abstract class Worker {
  void work();
}

abstract class Sleeper {
  void sleep();
}

class Human implements Worker, Sleeper {
  @override
  void sleep() {
    print('I do a lot of work');
  }

  @override
  void work() {
    print('I always work');
  }
}
