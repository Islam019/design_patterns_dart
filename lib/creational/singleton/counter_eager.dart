import 'package:design_pattern/creational/singleton/counter_interface.dart';

class EagerCounter implements CounterInterface {
  int _counter = 0;

  //* ======= Eager Initialization =======

  static final EagerCounter _instance = EagerCounter._();

  static EagerCounter instance() {
    print('Get Eager Instance...');

    return _instance;
  }

  EagerCounter._() {
    print('Eager Initialization...');
  }

  @override
  void increaseCounterByOne() {
    _counter++;
  }

  @override
  void getCounter() => print(_counter);
}


// class Singleton {
//   /// private constructor
//   Singleton._();
//   /// the one and only instance of this singleton
//   static final instance = Singleton._();
// }