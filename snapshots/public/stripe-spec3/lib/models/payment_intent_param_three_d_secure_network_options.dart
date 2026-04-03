// GENERATED CODE - DO NOT MODIFY BY HAND

import 'package:degenerate_runtime/degenerate_runtime.dart';import 'payment_intent_param_three_d_secure_network_options_cartes_bancaires.dart';@immutable final class PaymentIntentParamThreeDSecureNetworkOptions {const PaymentIntentParamThreeDSecureNetworkOptions({this.cartesBancaires});

factory PaymentIntentParamThreeDSecureNetworkOptions.fromJson(Map<String, dynamic> json) { return PaymentIntentParamThreeDSecureNetworkOptions(
  cartesBancaires: json['cartes_bancaires'] != null ? PaymentIntentParamThreeDSecureNetworkOptionsCartesBancaires.fromJson(json['cartes_bancaires'] as Map<String, dynamic>) : null,
); }

final PaymentIntentParamThreeDSecureNetworkOptionsCartesBancaires? cartesBancaires;

Map<String, dynamic> toJson() { return {
  if (cartesBancaires != null) 'cartes_bancaires': cartesBancaires?.toJson(),
}; } 
static bool canParse(Map<String, dynamic> json) { return json.keys.any((key) => const {'cartes_bancaires'}.contains(key)); } 
PaymentIntentParamThreeDSecureNetworkOptions copyWith({PaymentIntentParamThreeDSecureNetworkOptionsCartesBancaires Function()? cartesBancaires}) { return PaymentIntentParamThreeDSecureNetworkOptions(
  cartesBancaires: cartesBancaires != null ? cartesBancaires() : this.cartesBancaires,
); } 
@override bool operator ==(Object other) { return identical(this, other) ||
      other is PaymentIntentParamThreeDSecureNetworkOptions &&
          cartesBancaires == other.cartesBancaires; } 
@override int get hashCode { return cartesBancaires.hashCode; } 
@override String toString() { return 'PaymentIntentParamThreeDSecureNetworkOptions(cartesBancaires: $cartesBancaires)'; } 
 }
