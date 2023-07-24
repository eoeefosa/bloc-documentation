/// Interface segregation
/// this principle states that client dont have
/// to that class dont have to implement a behaviour
/// they don't need
///
/// you should create small interfaces with minimal
/// methods

abstract class Worker {
  void work();
  void sleep();
}

class Human implements Worker {
  void work() => print("I do a lot of work");
  void sleep() => print("I need 10 hours per night");
}
// robot can sleep so we can't implement sleep
class Robot implements Worker{
 void work()=> print("I always work");
 void sleep(){}//??
}
