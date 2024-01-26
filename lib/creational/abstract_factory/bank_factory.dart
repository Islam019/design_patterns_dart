import 'package:design_pattern/creational/factory_method/payment_card.dart';
import 'package:design_pattern/creational/factory_method/bank.dart';
import 'package:design_pattern/creational/factory_method/bank_a.dart';
import 'package:design_pattern/creational/factory_method/bank_b.dart';
import 'package:design_pattern/creational/factory_method/bank_c.dart';

// This is the implementation of Abstract Factory
// It can be use to return multiple instances (products)
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

  PaymentCard getPaymentCard(String cardNumber) {
    switch (cardNumber.substring(0)) {
      case 'A':
        {
          return VisaCard();
        }
      case 'B':
        {
          return MasterCard();
        }
      default:
        {
          print('Wrong input!');
        }
    }
    throw UnimplementedError();
  }
}
