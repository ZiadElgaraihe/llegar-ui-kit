class PaymentMethodEntity {
  final String title;
  final String icon;
  ///This is exclusively utilized in the context of "My Wallet" 
  /// to display the user's wallet balance.
  final String? walletMoney;

  const PaymentMethodEntity({
    required this.title,
    required this.icon,
    this.walletMoney,
  });
}
