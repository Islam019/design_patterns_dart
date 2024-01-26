abstract class PaymentCard {
  void getName();

  String getProviderInfo();
}

class VisaCard extends PaymentCard {
  @override
  void getName() {
    print('Visa Card');
  }

  @override
  String getProviderInfo() {
    throw UnimplementedError();
  }
}

class MasterCard extends PaymentCard {
  @override
  void getName() {
    print('MasterCard');
  }

  @override
  String getProviderInfo() {
    throw UnimplementedError();
  }
}
