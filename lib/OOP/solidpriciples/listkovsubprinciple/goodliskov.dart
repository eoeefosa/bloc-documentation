abstract class Plane {}

abstract class RealPlane {
  startEngine();
}

class FighterJet extends RealPlane {
  @override
  startEngine() {}
}

class PaperPlane extends Plane {}
