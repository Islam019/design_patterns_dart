abstract class Shape {
  int? x;
  int? y;

  Shape(this.x, this.y);

  Shape.clone(Shape shape) {
    x = shape.x;
    y = shape.y;
  }

  Shape clone();
}
