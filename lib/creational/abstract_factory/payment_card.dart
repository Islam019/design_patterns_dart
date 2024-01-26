abstract class PaymentCard {
  String getName();

  String getProviderInfo();
}

class VisaCard extends PaymentCard {
  @override
  String getName() {
    throw UnimplementedError();
  }

  @override
  String getProviderInfo() {
    throw UnimplementedError();
  }
}

class MasterCard extends PaymentCard {
  @override
  String getName() {
    throw UnimplementedError();
  }

  @override
  String getProviderInfo() {
    throw UnimplementedError();
  }
}
