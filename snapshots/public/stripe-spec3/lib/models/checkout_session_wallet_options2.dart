// GENERATED CODE - DO NOT MODIFY BY HAND

import 'checkout_session_wallet_options.dart';/// Wallet-specific configuration for this Checkout Session.
final class CheckoutSessionWalletOptions2 {const CheckoutSessionWalletOptions2({this.checkoutSessionWalletOptions});

factory CheckoutSessionWalletOptions2.fromJson(Map<String, dynamic> json) { return CheckoutSessionWalletOptions2(
  checkoutSessionWalletOptions: CheckoutSessionWalletOptions.canParse(json) ? CheckoutSessionWalletOptions.fromJson(json) : null,
); }

final CheckoutSessionWalletOptions? checkoutSessionWalletOptions;

/// At least one variant must be present.
bool get isValid { return checkoutSessionWalletOptions != null; } 
Map<String, dynamic> toJson() { return {
  ...?checkoutSessionWalletOptions?.toJson(),
}; } 
 }
