void main() {
  // CreationalPatterns.singletonPattern();
  // CreationalPatterns.prototypePattern();

  const test1 = TestEquality(1);
  const test2 = TestEquality(1);

  if (test1 == test2) {
    print('Equal');
  }
}

class TestEquality {
  final int x;
  const TestEquality(this.x);
}
