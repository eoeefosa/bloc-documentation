abstract class Shape {
  num area();
}

class Circle extends Shape {
  num raduis;
  Circle(this.raduis);

  @override
  num area() => 3.14 * raduis * raduis;
}

class Square implements Shape {
  num side;
  Square(this.side);

  @override
  num area() {
    return side * side;
  }
}
