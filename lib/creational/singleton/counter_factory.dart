import 'package:design_pattern/creational/singleton/counter_interface.dart';

class FactoryCounter implements CounterInterface {
  int _counter = 0;

  //* ======= Factory Initialization =======

  static final FactoryCounter _instance = FactoryCounter._internal();

  factory FactoryCounter() {
    print('Get Factory Instance...');

    return _instance;
  }

  FactoryCounter._internal() {
    print('Factory Initialization...');
  }

  @override
  void increaseCounterByOne() {
    _counter++;
  }

  @override
  void getCounter() => print(_counter);
}
