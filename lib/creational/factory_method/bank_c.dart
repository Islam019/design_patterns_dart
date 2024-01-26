import 'package:design_pattern/creational/factory_method/bank.dart';

class BankC extends Bank {
  @override
  void withdraw() {
    print('This is Bank C Withdrawing...');
  }
}
