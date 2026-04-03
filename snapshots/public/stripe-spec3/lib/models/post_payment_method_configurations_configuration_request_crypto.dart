// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'post_payment_method_configurations_configuration_request_crypto_display_preference.dart';/// [Stablecoin payments](https://docs.stripe.com/payments/stablecoin-payments) enable customers to pay in stablecoins like USDC from 100s of wallets including Phantom and Metamask.
@immutable final class PostPaymentMethodConfigurationsConfigurationRequestCrypto {const PostPaymentMethodConfigurationsConfigurationRequestCrypto({this.displayPreference});

factory PostPaymentMethodConfigurationsConfigurationRequestCrypto.fromJson(Map<String, dynamic> json) { return PostPaymentMethodConfigurationsConfigurationRequestCrypto(
  displayPreference: json['display_preference'] != null ? PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference.fromJson(json['display_preference'] as Map<String, dynamic>) : null,
); }

final PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference? displayPreference;

Map<String, dynamic> toJson() { return {
  if (displayPreference != null) 'display_preference': displayPreference?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'display_preference'}.contains(key)); } 
PostPaymentMethodConfigurationsConfigurationRequestCrypto copyWith({PostPaymentMethodConfigurationsConfigurationRequestCryptoDisplayPreference Function()? displayPreference}) { return PostPaymentMethodConfigurationsConfigurationRequestCrypto(
  displayPreference: displayPreference != null ? displayPreference() : this.displayPreference,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PostPaymentMethodConfigurationsConfigurationRequestCrypto &&
          displayPreference == other.displayPreference; } 
@override int get hashCode { return displayPreference.hashCode; } 
@override String toString() { return 'PostPaymentMethodConfigurationsConfigurationRequestCrypto(displayPreference: $displayPreference)'; } 
 }
