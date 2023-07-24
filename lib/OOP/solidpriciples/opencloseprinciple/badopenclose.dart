///open close principle
///It states that for good practice you should be able
///to add new futures without modifying the exiting code
///in another word an entity should be open for extensions
///but closed for modification

class Rectangle {
  final double width;
  final double height;

  const Rectangle(this.width, this.height);
}

class Circle {
  final double radius;
  const Circle(this.radius);
  double get pi => 3.1415;
}

class AreaCalculator {
  double calculate(Object shape) {
    if (shape is Rectangle) {
      final r = shape;
      return r.width * r.height;
    } else {
      final c = shape as Circle;
      return c.radius * c.pi;
    }
  }
}
