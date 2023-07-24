///listkov substitution principle
///subclass should be substitutable for the class
///which they were derive
///if class B is a subtype of class A then class B
///can be replace with objects of type class b
///without changing or breaking the behavior of the
///program

abstract class Plane {
  startEngine();
}

class FighterJet extends Plane {
  @override
  startEngine() {}
}

// paper plane cant start engine
class PaperPlane extends Plane {
  @override
  startEngine() {}
}
