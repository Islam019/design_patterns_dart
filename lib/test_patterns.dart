// ignore_for_file: unused_local_variable
import 'dart:io';
import 'dart:math';

import 'package:design_pattern/creational/abstract_factory/bank_factory.dart';
import 'package:design_pattern/creational/factory_method/bank.dart';
import 'package:design_pattern/creational/factory_method/payment_card.dart';
import 'package:design_pattern/creational/singleton/counter_eager.dart';
import 'package:design_pattern/creational/singleton/counter_factory.dart';

import 'creational/singleton/counter_lazy.dart';

class CreationalPatterns {
  //* Factory Method Pattern
  static void factoryMethodPattern() {
    // take user input and check the type of the bank then execute the desired bank withdraw method
    print('Enter your bank name : ');
    String? userInput = stdin.readLineSync();
    Bank bank;
    PaymentCard card;

    bank = BankFactory().getBank(userInput!);
    card = BankFactory().getPaymentCard(userInput);

    bank.withdraw();

    card.getName();
  }

  //* Singleton Pattern
  static void singletonPattern() {
    // Consuming Lazy Initialization
    final lazyCounter = LazyCounter.instance();

    lazyCounter.increaseCounterByOne();

    lazyCounter.getCounter();

    // Consuming Eager (Normal) Initialization
    final eagerCounter1 = EagerCounter.instance();
    final eagerCounter2 = EagerCounter.instance();

    eagerCounter1.increaseCounterByOne();
    eagerCounter1.getCounter();

    eagerCounter2.increaseCounterByOne();
    eagerCounter2.getCounter();

    // Consuming Factory Initialization
    final factoryCounter = FactoryCounter();

    factoryCounter.increaseCounterByOne();

    factoryCounter.getCounter();
  }

  //* Prototype Pattern
  static void prototypePattern() {
    final rectangle1 = Rectangle(5, 5, 5, 5);
    final rectangle2 = Rectangle(5, 5, 5, 5);

    if (rectangle1 == rectangle2) {
      print('=');
    } else {
      print('!=');
    }
  }
}
