import 'package:design_pattern/creational/prototype/shape.dart';

class Rectangle implements Shape {
  int? height;
  int? width;

  @override
  int? x;

  @override
  int? y;

  int? _hashCode;
  bool isClone = false;
  String get cloneStatus => isClone ? "clone" : "original";

  Rectangle(this.height, this.width, this.x, this.y);

  Rectangle.fromSource(Rectangle source) {
    height = source.height;
    width = source.width;
    x = source.x;
    y = source.y;
    _hashCode = source.hashCode;
    isClone = true;
  }

  @override
  int get hashCode {
    if (_hashCode != null) return _hashCode!;
    _hashCode = DateTime.now().millisecondsSinceEpoch;
    return _hashCode!;
  }

  @override
  bool operator ==(Object other) {
    if (other is! Rectangle) return false;
    Rectangle rect = other;
    return rect.isClone && rect.hashCode == hashCode;
  }

  @override
  Rectangle clone() {
    return Rectangle.fromSource(this);
  }
}
