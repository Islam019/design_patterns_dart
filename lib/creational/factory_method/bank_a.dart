import 'package:design_pattern/creational/factory_method/bank.dart';

class BankA extends Bank {
  @override
  void withdraw() {
    print('This is Bank A Withdrawing...');
  }
}
