import 'package:equatable/equatable.dart';

void main() {
  // CreationalPatterns.singletonPattern();
  // CreationalPatterns.prototypePattern();

  const test1 = TestEqualityWithEquatable(100, 6, 5, 8);
  const test2 = TestEqualityWithEquatable(101, 6, 5, 8);

  print(test1.hashCode);
  print(test2.hashCode);

  if (test1 == test2) {
    print('Equal');
  }
}

class TestEqualityWithoutEquatable {
  final int x;
  final int y;
  final int z;
  final int id;
  const TestEqualityWithoutEquatable(this.id, this.x, this.y, this.z);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TestEqualityWithoutEquatable && hashCode == other.hashCode;

  @override
  int get hashCode => Object.hash(id, x, y, z);
}

class TestEqualityWithEquatable extends Equatable {
  final int x;
  final int y;
  final int z;
  final int id;
  const TestEqualityWithEquatable(this.id, this.x, this.y, this.z);

  @override
  List<Object?> get props => [id, x, y, z];
}
