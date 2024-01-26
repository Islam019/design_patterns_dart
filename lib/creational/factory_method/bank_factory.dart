import 'package:design_pattern/creational/factory_method/bank.dart';
import 'package:design_pattern/creational/factory_method/bank_a.dart';
import 'package:design_pattern/creational/factory_method/bank_b.dart';
import 'package:design_pattern/creational/factory_method/bank_c.dart';

// This Factory return only one instance type (product) : Bank
// so this is called Factory Method
class BankFactory {
  Bank getBank(String bankName) {
    switch (bankName.substring(0)) {
      case 'A':
        {
          return BankA();
        }
      case 'B':
        {
          return BankB();
        }

      case 'C':
        {
          return BankC();
        }
      default:
        {
          print('Wrong input!');
          // return;
        }
    }
    throw UnimplementedError();
  }
}
