import 'package:design_pattern/creational/factory_method/bank.dart';

class BankB extends Bank {
  @override
  void withdraw() {
    print('This is Bank B Withdrawing...');
  }
}
