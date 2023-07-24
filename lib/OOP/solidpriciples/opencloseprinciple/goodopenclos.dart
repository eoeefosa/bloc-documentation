abstract class Area {
  const Area();
  double computeArea();
}

class Rectangle extends Area {
  final double width;
  final double height;
  const Rectangle(this.width, this.height);

  @override
  double computeArea() {
    return width * height;
  }
}

class Circle extends Area {
  final double radius;
  const Circle(this.radius);
  @override
  double computeArea() {
    return radius * radius * 3.1415;
  }
}

class AreaCalculator {
  double calculate(Area shape) => shape.computeArea();
}
