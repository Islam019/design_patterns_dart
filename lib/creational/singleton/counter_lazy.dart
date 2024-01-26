import 'package:design_pattern/creational/singleton/counter_interface.dart';

class LazyCounter implements CounterInterface {
  int _counter = 0;

  //* ======= Lazy Initialization =======

  static LazyCounter? _instance;

  static LazyCounter instance() {
    print('Get Lazy Instance...');

    _instance ??= LazyCounter._internal();
    return _instance!;
  }

  LazyCounter._internal() {
    print('Lazy Initialization...');
  }

  @override
  void increaseCounterByOne() {
    _counter++;
  }

  @override
  void getCounter() => print(_counter);
}
