// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_request_crypto_display_preference.dart';/// [Stablecoin payments](https://docs.stripe.com/payments/stablecoin-payments) enable customers to pay in stablecoins like USDC from 100s of wallets including Phantom and Metamask.
@immutable final class PostPaymentMethodConfigurationsRequestCrypto {const PostPaymentMethodConfigurationsRequestCrypto({this.displayPreference});

factory PostPaymentMethodConfigurationsRequestCrypto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsRequestCrypto(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsRequestCryptoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsRequestCryptoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsRequestCrypto copyWith({PostPaymentMethodConfigurationsRequestCryptoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsRequestCrypto(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsRequestCrypto &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsRequestCrypto(displayPreference: $displayPreference)'; } 
 }
